package org.egov.egf.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.egov.commons.CChartOfAccounts;
import org.egov.commons.dao.ChartOfAccountsDAO;
import org.egov.commons.dao.ChartOfAccountsHibernateDAO;
import org.egov.commons.service.AccountPurposeService;
import org.egov.commons.service.AccountdetailtypeService;
import org.egov.commons.service.ChartOfAccountsService;
import org.egov.egf.web.adaptor.ChartOfAccountReportJsonAdaptor;
import org.egov.egf.web.adaptor.RecoveryJsonAdaptor;
import org.egov.infra.utils.JsonUtils;
import org.egov.model.recoveries.Recovery;
import org.egov.model.report.ChartOfAccountsReport;
import org.egov.services.report.ChartOfAccountsReportService;
import org.egov.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/masters/coareport")
public class ChartOfAccountsReportController {

    private final static String COA_REPORT = "coareport";

    @Autowired
    private ChartOfAccountsReportService chartOfAccountsReportService;

    @Autowired
    private AccountPurposeService accountPurposeService;

    @Autowired
    @Qualifier("chartOfAccountsService")
    private ChartOfAccountsService chartOfAccountsService;

    @Autowired
    private AccountdetailtypeService accountdetailtypeService;

    @Autowired
    private ChartOfAccountsHibernateDAO chartOfAccountsHibernateDAO;


    @ModelAttribute
    public ChartOfAccountsReport searchRequest() {
        return new ChartOfAccountsReport();
    }

    public @ModelAttribute("type") List<String> getTypeAllCOA() {
        final List<String> type = new ArrayList<>();
        type.add(Constants.INCOME_TYPE);
        type.add(Constants.EXPENSE_TYPE);
        type.add(Constants.LIABILITY_TYPE);
        type.add(Constants.ASSET_TYPE);
        return type;
    }

    private void prepareNewForm(Model model) {
        model.addAttribute("accountDetailTypeList", accountdetailtypeService.findAll());
        model.addAttribute("purposeList", accountPurposeService.findAll());
        model.addAttribute("allChartOfAccounts", chartOfAccountsHibernateDAO.getDetailedCodesList());
        model.addAttribute("majorCodeList", chartOfAccountsReportService.getMajorCodeList());
        model.addAttribute("minCodeList", chartOfAccountsReportService.getMinorCodeList());
        
    }

    @RequestMapping(method = RequestMethod.GET, value = "/search")
    public String searchForm(final Model model) {
        prepareNewForm(model);
        return COA_REPORT;
    }

    @RequestMapping(value = "/coareportResult", method = RequestMethod.GET, produces = MediaType.TEXT_PLAIN_VALUE)
    public @ResponseBody String getcoaReportResult(final Model model,
            @ModelAttribute final ChartOfAccountsReport chartOfAccountsReport, final HttpServletRequest request) {
        final List<ChartOfAccountsReport> coaReportList = chartOfAccountsReportService
                .getCoaReport(chartOfAccountsReport);

        String result = new StringBuilder("{ \"data\":").append(toSearchResultJson(coaReportList)).append("}")
                .toString();
        return result;
    }

    @RequestMapping(value = "/ajax/getAccountCodeAndName", method = RequestMethod.GET)
    public @ResponseBody List<CChartOfAccounts> getAccounts(@RequestParam("accountCode") String accountCode) {
        List<CChartOfAccounts> accounts = null;
      
            accounts = chartOfAccountsHibernateDAO.findDetailedAccountCodesByGlcodeOrNameLike(accountCode);
       return accounts;
    }
    
    
    @RequestMapping(value = "/ajax/getMinorCode", method = RequestMethod.GET)
    public @ResponseBody List<CChartOfAccounts> getMinorAccounts(@RequestParam("parentId") Long parentId) {
        List<CChartOfAccounts> accounts = null;
        accounts = chartOfAccountsReportService.getMinCodeListByMajorCodeId(parentId);
        return accounts;
    }
    public Object toSearchResultJson(final Object object) {
        final GsonBuilder gsonBuilder = new GsonBuilder();
        final Gson gson = gsonBuilder.registerTypeAdapter(ChartOfAccountsReport.class, new ChartOfAccountReportJsonAdaptor()).create();
        final String json = gson.toJson(object);
        return json;
}
     
}
