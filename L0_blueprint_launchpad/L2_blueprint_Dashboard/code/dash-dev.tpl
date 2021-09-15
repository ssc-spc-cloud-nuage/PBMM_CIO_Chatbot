 {
    "lenses": {
      "0": {
        "order": 0,
        "parts": {
          "0": {
            "position": {
              "x": 0,
              "y": 0,
              "colSpan": 14,
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
                      "/subscriptions/6425f0ed-3443-4139-8361-9b8d3951d43e/resourceGroups/ScDc-CIO_Chatbot_Project-rg/providers/microsoft.insights/components/ScDc-CIO-Chatbot-svc",
                      "/subscriptions/6425f0ed-3443-4139-8361-9b8d3951d43e/resourceGroups/ScDc-CIO_Chatbot_Project-rg/providers/Microsoft.Insights/components/ScDc-CIO-Chatbot-app-appi",
                      "/subscriptions/6425f0ed-3443-4139-8361-9b8d3951d43e/resourceGroups/ScDc-CIO_Chatbot_Project-rg/providers/Microsoft.Insights/components/ScDc-CIO-Chatbot-EN-svc-appi",
                      "/subscriptions/6425f0ed-3443-4139-8361-9b8d3951d43e/resourceGroups/ScDc-CIO_Chatbot_Project-rg/providers/Microsoft.Insights/components/ScDc-CIO-Chatbot-FR-svc-appi"
                    ]
                  },
                  "isOptional": true
                },
                {
                  "name": "PartId",
                  "value": "96e580f0-444d-4856-9b14-59d64be8609b",
                  "isOptional": true
                },
                {
                  "name": "Version",
                  "value": "2.0",
                  "isOptional": true
                },
                {
                  "name": "TimeRange",
                  "value": "P30D",
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
                  "value": "requests\n| where url endswith \"generateAnswer\"\n| project timestamp, id, url, resultCode, duration, performanceBucket\n| parse kind = regex url with *\"(?i)knowledgebases/\"KbId\"/generateAnswer\"\n| join kind= inner (\n    traces\n    | extend id = operation_ParentId\n    )\n    on id\n| extend question = tostring(customDimensions['Question'])\n| extend answer = tostring(customDimensions['Answer'])\n| extend score = tostring(customDimensions['Score'])\n| project question, answer, score\n| summarize any(answer), any(score) by question\n\n",
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
                  "value": "ScDc-CIO-Chatbot-svc",
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
                    "question": "410px",
                    "any_answer": "372px"
                  }
                }
              },
              "savedContainerState": {
                "partTitle": "Analytics",
                "assetName": "ScDc-CIO-Chatbot-svc"
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
                "relative": "30d"
              },
              "displayCache": {
                "name": "UTC Time",
                "value": "Past 30 days"
              },
              "filteredPartIds": [
                "StartboardPart-LogsDashboardPart-288f4922-f325-4ab2-b4b9-92e85073b7dc"
              ]
            }
          }
        }
      }
    }
  }