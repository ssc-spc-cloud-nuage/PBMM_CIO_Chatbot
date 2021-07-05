{
    "lenses": {
      "0": {
        "order": 0,
        "parts": {
          "0": {
            "position": {
              "x": 0,
              "y": 0,
              "colSpan": 12,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "resourceTypeMode",
                  "isOptional": true
                },
                {
                  "name": "ComponentId",
                  "isOptional": true
                },
                {
                  "name": "Scope",
                  "value": {
                    "resourceIds": [
                      "/subscriptions/852f39b8-db15-44dc-bc7a-bfa5ace7bce3/resourceGroups/ScPc-CIO_Chatbot_Project-rg/providers/Microsoft.Insights/components/ScPc-CIO-Chatbot-app-appi",
                      "/subscriptions/852f39b8-db15-44dc-bc7a-bfa5ace7bce3/resourceGroups/ScPc-CIO_Chatbot_Project-rg/providers/microsoft.insights/components/ScPc-CIO-Chatbot-EN-svc",
                      "/subscriptions/852f39b8-db15-44dc-bc7a-bfa5ace7bce3/resourceGroups/ScPc-CIO_Chatbot_Project-rg/providers/Microsoft.Insights/components/ScPc-CIO-Chatbot-EN-svc-appi",
                      "/subscriptions/852f39b8-db15-44dc-bc7a-bfa5ace7bce3/resourceGroups/ScPc-CIO_Chatbot_Project-rg/providers/microsoft.insights/components/ScPc-CIO-Chatbot-FR-svc",
                      "/subscriptions/852f39b8-db15-44dc-bc7a-bfa5ace7bce3/resourceGroups/ScPc-CIO_Chatbot_Project-rg/providers/Microsoft.Insights/components/ScPc-CIO-Chatbot-FR-svc-appi",
                      "/subscriptions/852f39b8-db15-44dc-bc7a-bfa5ace7bce3/resourceGroups/scpc-cio_chatbot_project-rg/providers/microsoft.insights/components/ScPc-CIO-Chatbot-svc"
                    ]
                  },
                  "isOptional": true
                },
                {
                  "name": "PartId",
                  "value": "2bd1bdd5-5fa2-458e-9a4e-d72110107967",
                  "isOptional": true
                },
                {
                  "name": "Version",
                  "value": "2.0",
                  "isOptional": true
                },
                {
                  "name": "TimeRange",
                  "value": "P1D",
                  "isOptional": true
                },
                {
                  "name": "DashboardId",
                  "isOptional": true
                },
                {
                  "name": "DraftRequestParameters",
                  "isOptional": true
                },
                {
                  "name": "Query",
                  "value": "requests\n| where url endswith \"generateAnswer\"\n| project timestamp, id, url, resultCode, duration, performanceBucket\n| parse kind = regex url with *\"(?i)knowledgebases/\"KbId\"/generateAnswer\"\n| join kind= inner (\ntraces | extend id = operation_ParentId\n) on id\n| extend question = tostring(customDimensions['Question'])\n| extend answer = tostring(customDimensions['Answer'])\n| extend score = tostring(customDimensions['Score'])\n| project question, answer, score\n| summarize any(answer), any(score) by question\n\n",
                  "isOptional": true
                },
                {
                  "name": "ControlType",
                  "value": "AnalyticsGrid",
                  "isOptional": true
                },
                {
                  "name": "SpecificChart",
                  "isOptional": true
                },
                {
                  "name": "PartTitle",
                  "value": "Analytics",
                  "isOptional": true
                },
                {
                  "name": "PartSubTitle",
                  "value": "ScPc-CIO-Chatbot-app-appi",
                  "isOptional": true
                },
                {
                  "name": "Dimensions",
                  "isOptional": true
                },
                {
                  "name": "LegendOptions",
                  "isOptional": true
                },
                {
                  "name": "IsQueryContainTimeRange",
                  "value": false,
                  "isOptional": true
                }
              ],
              "type": "Extension/Microsoft_OperationsManagementSuite_Workspace/PartType/LogsDashboardPart",
              "settings": {
                "content": {
                  "GridColumnsWidth": {
                    "any_answer": "344px",
                    "question": "367px"
                  }
                }
              },
              "savedContainerState": {
                "partTitle": "Analytics",
                "assetName": "ScPc-CIO-Chatbot-app-appi"
              }
            }
          }
        }
      }
    },
    "metadata": {
      "model": {
        "timeRange": {
          "value": {
            "relative": {
              "duration": 24,
              "timeUnit": 1
            }
          },
          "type": "MsPortalFx.Composition.Configuration.ValueTypes.TimeRange"
        },
        "filterLocale": {
          "value": "en-us"
        },
        "filters": {
          "value": {
            "MsPortalFx_TimeRange": {
              "model": {
                "format": "utc",
                "granularity": "auto",
                "relative": "24h"
              },
              "displayCache": {
                "name": "UTC Time",
                "value": "Past 24 hours"
              },
              "filteredPartIds": [
                "StartboardPart-LogsDashboardPart-6cabaf07-ba25-4f72-98cc-3dbed43190a2"
              ]
            }
          }
        }
      }
    }
  }