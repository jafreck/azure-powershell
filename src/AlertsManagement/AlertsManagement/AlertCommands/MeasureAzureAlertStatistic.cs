﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters;
using Microsoft.Rest.Azure;
using System.Collections.Generic;
using System.Management.Automation;
using Microsoft.Azure.Commands.AlertsManagement.OutputModels;
using Microsoft.Azure.Management.AlertsManagement.Models;

namespace Microsoft.Azure.Commands.AlertsManagement
{
    [Cmdlet("Measure", ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "AlertStatistic")]
    [OutputType(typeof(PSAlertsSummary))]
    public class MeasureAzureAlertStatistic : AlertsManagementBaseCmdlet
    {
        #region Parameters declarations

        /// <summary>
        /// Group by mentioned property of alert
        /// </summary>
        [Parameter(Mandatory = true,
                   HelpMessage = "Summarize by property")]
        [ValidateNotNullOrEmpty]
        [PSArgumentCompleter("severity", "alertState", "monitorCondition", "monitorService", "signalType", "alertRule")]
        public string GroupBy { get; set; }

        /// <summary>
        /// Resource Id
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Filter on Resource Id of the target resource of alert.")]
        public string TargetResource { get; set; }

        /// <summary>
        /// Resource Type
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Filter on Resource type of the target resource of alert.")]
        [ResourceTypeCompleter]
        public string TargetResourceType { get; set; }

        /// <summary>
        /// Resource Group Name
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Filter on Resource group name of the target resource of alert.")]
        [ResourceGroupCompleter]
        public string TargetResourceGroup { get; set; }

        /// <summary>
        /// Monitor Service
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Filter on Moniter Service")]
        [PSArgumentCompleter("Platform", "Log Analytics", "SCOM", "Activity Log")]
        public string MonitorService { get; set; }

        /// <summary>
        /// Monitor Condition
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Filter on Monitor Condition")]
        [PSArgumentCompleter("Fired", "Resolved")]
        public string MonitorCondition { get; set; }

        /// <summary>
        /// Severity
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Filter on Severity of alert")]
        [PSArgumentCompleter("Sev0", "Sev1", "Sev2", "Sev3", "Sev4")]
        public string Severity { get; set; }

        /// <summary>
        /// Alert State
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Filter on State of alert")]
        [PSArgumentCompleter("New", "Acknowledged", "Closed")]
        public string State { get; set; }

        /// <summary>
        /// Alert Rule Id
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Filter on Alert Rule Id")]
        public string AlertRuleId { get; set; }

        /// <summary>
        /// Time range
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Supported time range values – 1h, 1d, 7d, 30d (Default is 1d)")]
        [PSArgumentCompleter("1h", "1d", "7d", "30d")]
        public string TimeRange { get; set; }

        /// <summary>
        /// Custom time range
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Supported format - <start-time>/<end-time> where time is in ISO-8601 format")]
        public string CustomTimeRange { get; set; }

        /// <summary>
        /// Include SmartGroups Count
        /// </summary>
        [Parameter(Mandatory = false,
                   HelpMessage = "Include SmartGroups Count")]
        [PSArgumentCompleter("true", "false")]
        public bool IncludeSmartGroupsCount { get; set; }

        #endregion

        protected override void ProcessRecordInternal()
        {
            PSAlertsSummary summary = new PSAlertsSummary(this.AlertsManagementClient.Alerts.GetSummaryWithHttpMessagesAsync(
                groupby: GroupBy,
                targetResource: TargetResource,
                targetResourceType: TargetResourceType,
                targetResourceGroup: TargetResourceGroup,
                monitorService: MonitorService,
                monitorCondition: MonitorCondition,
                severity: Severity,
                alertState: State,
                alertRule: AlertRuleId,
                timeRange: TimeRange,
                customTimeRange: CustomTimeRange,
                includeSmartGroupsCount: IncludeSmartGroupsCount
                ).Result.Body);

            WriteObject(summary);
            WriteObject(summary.AggregatedCounts.ToString());
        }
    }
}
