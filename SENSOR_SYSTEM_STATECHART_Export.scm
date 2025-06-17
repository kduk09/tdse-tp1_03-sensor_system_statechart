{
  "graph": {
    "cells": [
      {
        "position": {
          "x": -117,
          "y": -59.5
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "e231e707-a282-46eb-b836-0e0cdfcbdfba",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "SENSOR_SYSTEM_STATECHART Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\n//Actuador_Interno\ninterface ACTUATOR:\nvar tick: integer\n\ninterface SENSOR_PRESENCIA: \n    in event EV_SYS_01_HAY_AUTO\n    in event EV_SYS_01_NO_HAY_AUTO\n    var tick: integer\n\ninterface BOTON_BARRERA:\n    in event EV_SYS_01_BOTON_BARRERA_UP\n    in event EV_SYS_01_BOTON_BARRERA_DOWN\n    var tick: integer\n    \ninterface SENSOR_BARRERA:\n    in event EV_SYS_01_BARRERA_ALTA\n    in event EV_SYS_01_BARRERA_BAJA\n\n//Interfaz sist-actuador    \ninterface BARRERA:\n    out event OP_SUBIR_BARRERA\n    out event OP_FRENAR_BARRERA_ALTA\n    out event OP_FRENAR_BARRERA_BAJA\n    out event OP_BAJAR_BARRERA\n    \ninterface BT_01:\n    var tick: integer\n    in event EV_UP\n    in event EV_DOWN\n    \ninterface BT_02:\n    var tick: integer\n    in event EV_UP\n    in event EV_DOWN\n    \ninterface BT_03:\n    var tick: integer\n    in event EV_UP\n    in event EV_DOWN"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -860,
          "y": -748
        },
        "size": {
          "width": 834,
          "height": 438
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1701,
        "id": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "embeds": [
          "ff1bd55d-3b59-43c4-9c84-445f51d2e629",
          "f64b7898-7d41-47f1-9985-c92f6a0a6055",
          "86781cca-dca3-48a1-ab7f-c3c5adab2222",
          "4a8263a3-3302-495b-b0cd-cb7b9bc14e8c",
          "5c145fe1-8778-4364-b323-8c84a632e2b4",
          "f52069a5-0908-4b3f-8e5a-9a3dc16dc7a7",
          "d7295753-b93f-4811-8d72-71c2201d3ed8",
          "ff15f9e3-1f8d-422c-a9bb-f9769968c498",
          "27b2bf5a-cf68-47f8-9446-9a83cfb46943",
          "727d6e23-cd1b-47a5-b946-9a78642a7628",
          "9efc9cf4-c36d-4408-abed-a9531c4651e0",
          "6e84a73f-00fe-4390-bce1-7016a52758cd"
        ],
        "attrs": {
          "priority": {
            "text": 2
          },
          "name": {
            "text": "BT_01"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -805,
          "y": -681
        },
        "size": {
          "width": 425.140625,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1702,
        "id": "ff15f9e3-1f8d-422c-a9bb-f9769968c498",
        "embeds": [
          "9484ac82-0db0-4c5a-bd82-c593a8057866"
        ],
        "attrs": {
          "name": {
            "text": "ST_BT_01_UP",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / raise BOTON_BARRERA.EV_SYS_01_BOTON_BARRERA_UP"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -785,
          "y": -748
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1703,
        "id": "27b2bf5a-cf68-47f8-9446-9a83cfb46943",
        "embeds": [
          "7ec38abd-91d4-4801-a718-62ebe0278522"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -805,
          "y": -483
        },
        "size": {
          "width": 121.703125,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1704,
        "id": "727d6e23-cd1b-47a5-b946-9a78642a7628",
        "embeds": [
          "cef6a895-dd1a-4ced-9de4-05707791cab2"
        ],
        "attrs": {
          "name": {
            "text": "ST_BT_01_RAISE",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nBT_01.tick--"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -785,
          "y": -733
        },
        "parent": "27b2bf5a-cf68-47f8-9446-9a83cfb46943",
        "z": 1715,
        "id": "7ec38abd-91d4-4801-a718-62ebe0278522",
        "attrs": {
          "label": {
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "727d6e23-cd1b-47a5-b946-9a78642a7628"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 32,
              "dy": 43
            },
            "name": "topLeft"
          },
          "id": "ff15f9e3-1f8d-422c-a9bb-f9769968c498",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_01.tick == 0]"
              }
            },
            "position": {
              "distance": 0.5072463768115942,
              "offset": 59,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1716,
        "id": "f52069a5-0908-4b3f-8e5a-9a3dc16dc7a7",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "27b2bf5a-cf68-47f8-9446-9a83cfb46943"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 57,
              "dy": 52
            },
            "name": "topLeft"
          },
          "id": "ff15f9e3-1f8d-422c-a9bb-f9769968c498",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1716,
        "id": "d7295753-b93f-4811-8d72-71c2201d3ed8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "ff15f9e3-1f8d-422c-a9bb-f9769968c498"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 41,
              "dy": 24
            },
            "name": "topLeft"
          },
          "id": "ff15f9e3-1f8d-422c-a9bb-f9769968c498",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_01.EV_UP"
              }
            },
            "position": {
              "distance": 0.6982238092234208,
              "offset": -11.15240478515625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "ff15f9e3-1f8d-422c-a9bb-f9769968c498",
        "vertices": [
          {
            "x": -825,
            "y": -687
          }
        ],
        "z": 1716,
        "id": "9484ac82-0db0-4c5a-bd82-c593a8057866",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "727d6e23-cd1b-47a5-b946-9a78642a7628"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 57,
              "dy": 29
            },
            "name": "topLeft"
          },
          "id": "727d6e23-cd1b-47a5-b946-9a78642a7628",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_01.tick > 0]"
              }
            },
            "position": {
              "distance": 0.27020518810218963,
              "offset": -13.000000000000055,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "727d6e23-cd1b-47a5-b946-9a78642a7628",
        "vertices": [
          {
            "x": -748,
            "y": -410
          },
          {
            "x": -825,
            "y": -388
          }
        ],
        "z": 1716,
        "id": "cef6a895-dd1a-4ced-9de4-05707791cab2",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 19,
          "y": -681
        },
        "size": {
          "width": 818,
          "height": 396
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1745,
        "id": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "embeds": [
          "bc8a540b-6f4f-493c-b7fc-ced1b1a02d6a",
          "a2c57f6d-3cd9-4b84-8389-2e0bce9255d3",
          "4a467513-2798-457c-a318-71ddc9bb6ec0",
          "414c98ad-3487-43c3-9487-06a677a3a519",
          "f4cc77df-885d-4ca9-9e61-87fcbcbe2319",
          "23af177d-d26a-474e-87ac-09a2cf46c445",
          "ec58d336-4120-473b-82e2-74e049fb3693",
          "45d78f3a-c4bc-42c1-9621-0822f54111df",
          "f695a878-32b2-4820-8c4e-c2f401c74f20",
          "7af2dcfe-9ad9-4144-870f-e58c69479174",
          "61b5cd70-b979-4992-83fb-9bcaf27ac02a",
          "6100a912-1f4c-4d24-920a-112262681942"
        ],
        "attrs": {
          "priority": {
            "text": 4
          },
          "name": {
            "text": "BT_02"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 47,
          "y": -614
        },
        "size": {
          "width": 410.6875,
          "height": 75
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1746,
        "id": "45d78f3a-c4bc-42c1-9621-0822f54111df",
        "embeds": [
          "033c04f8-d8e5-4b85-b3e7-08a80598a548"
        ],
        "attrs": {
          "name": {
            "text": "ST_BT_02_UP",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / raise SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 47,
          "y": -416
        },
        "size": {
          "width": 121.703125,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1748,
        "id": "f695a878-32b2-4820-8c4e-c2f401c74f20",
        "embeds": [
          "20b64285-4dc1-4f78-b428-b0afdc36b06c"
        ],
        "attrs": {
          "name": {
            "text": "ST_BT_01_RAISE",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nBT_02.tick--"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "f695a878-32b2-4820-8c4e-c2f401c74f20"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 32,
              "dy": 43
            },
            "name": "topLeft"
          },
          "id": "45d78f3a-c4bc-42c1-9621-0822f54111df",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_02.tick == 0]"
              }
            },
            "position": {
              "distance": 0.5072463768115942,
              "offset": 59,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1760,
        "id": "ec58d336-4120-473b-82e2-74e049fb3693",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "45d78f3a-c4bc-42c1-9621-0822f54111df"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 41,
              "dy": 24
            },
            "name": "topLeft"
          },
          "id": "45d78f3a-c4bc-42c1-9621-0822f54111df",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_02.EV_UP"
              }
            },
            "position": {
              "distance": 0.6982238092234208,
              "offset": -11.15240478515625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "45d78f3a-c4bc-42c1-9621-0822f54111df",
        "vertices": [
          {
            "x": 27,
            "y": -620
          }
        ],
        "z": 1760,
        "id": "033c04f8-d8e5-4b85-b3e7-08a80598a548",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f695a878-32b2-4820-8c4e-c2f401c74f20"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 57,
              "dy": 29
            },
            "name": "topLeft"
          },
          "id": "f695a878-32b2-4820-8c4e-c2f401c74f20",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_02.tick > 0]"
              }
            },
            "position": {
              "distance": 0.27020518810218963,
              "offset": -13.000000000000055,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "f695a878-32b2-4820-8c4e-c2f401c74f20",
        "vertices": [
          {
            "x": 104,
            "y": -343
          },
          {
            "x": 27,
            "y": -319
          }
        ],
        "z": 1760,
        "id": "20b64285-4dc1-4f78-b428-b0afdc36b06c",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 698.3203125,
          "y": -606.6953125
        },
        "size": {
          "width": 121.703125,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1767,
        "id": "7af2dcfe-9ad9-4144-870f-e58c69479174",
        "embeds": [
          "a86e7d43-56a9-4c86-aa47-8f27771422b8"
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "attrs": {
          "name": {
            "text": "ST_BT_02_FALL",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nBT_02.tick--"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "45d78f3a-c4bc-42c1-9621-0822f54111df"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 71.3515625,
              "dy": 8
            },
            "name": "topLeft"
          },
          "id": "7af2dcfe-9ad9-4144-870f-e58c69479174",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_02.EV_DOWN /BT_02.tick = 3"
              }
            },
            "position": {
              "distance": 0.3918892396123786,
              "offset": -18,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1768,
        "id": "f4cc77df-885d-4ca9-9e61-87fcbcbe2319",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7af2dcfe-9ad9-4144-870f-e58c69479174"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 53,
              "dy": 53
            },
            "name": "topLeft"
          },
          "id": "45d78f3a-c4bc-42c1-9621-0822f54111df",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_02.EV_UP"
              }
            },
            "position": {
              "distance": 0.4959028547778302,
              "offset": 12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1768,
        "id": "23af177d-d26a-474e-87ac-09a2cf46c445",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7af2dcfe-9ad9-4144-870f-e58c69479174"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 61,
              "dy": 34
            },
            "name": "topLeft"
          },
          "id": "7af2dcfe-9ad9-4144-870f-e58c69479174",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_02.tick > 0]"
              }
            },
            "position": {
              "distance": 0.17151930153249362,
              "offset": -15.57330322265625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "7af2dcfe-9ad9-4144-870f-e58c69479174",
        "vertices": [
          {
            "x": 748.3203125,
            "y": -616.6953125
          },
          {
            "x": 810.3203125,
            "y": -616.6953125
          }
        ],
        "z": 1768,
        "id": "a86e7d43-56a9-4c86-aa47-8f27771422b8",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 445.3125,
          "y": -428
        },
        "size": {
          "width": 381.78125,
          "height": 75
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1769,
        "id": "61b5cd70-b979-4992-83fb-9bcaf27ac02a",
        "embeds": [
          "120927bf-c437-4d9c-8bff-6ed9f2a4fe00"
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "attrs": {
          "name": {
            "text": "ST_BT_02_DOWN",
            "fontSize": 12
          },
          "specification": {
            "text": "entry /raise SENSOR_PRESENCIA.EV_SYS_01_HAY_AUTO"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "7af2dcfe-9ad9-4144-870f-e58c69479174"
        },
        "target": {
          "id": "61b5cd70-b979-4992-83fb-9bcaf27ac02a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 305.828125,
              "dy": 1.609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_02.tick == 0]"
              }
            },
            "position": {
              "offset": 64,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1770,
        "id": "a2c57f6d-3cd9-4b84-8389-2e0bce9255d3",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f695a878-32b2-4820-8c4e-c2f401c74f20"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 21,
              "dy": 13.00872802734375
            },
            "name": "topLeft"
          },
          "id": "61b5cd70-b979-4992-83fb-9bcaf27ac02a",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_02.EV_DOWN"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1770,
        "id": "4a467513-2798-457c-a318-71ddc9bb6ec0",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "61b5cd70-b979-4992-83fb-9bcaf27ac02a"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 70,
              "dy": 56.31549072265625
            },
            "name": "topLeft"
          },
          "id": "f695a878-32b2-4820-8c4e-c2f401c74f20",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_02.EV_UP /BT_02.tick = 3"
              }
            },
            "position": {
              "distance": 0.29489853802849264,
              "offset": -21.000007324218704,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1770,
        "id": "414c98ad-3487-43c3-9487-06a677a3a519",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "61b5cd70-b979-4992-83fb-9bcaf27ac02a"
        },
        "target": {
          "id": "61b5cd70-b979-4992-83fb-9bcaf27ac02a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 341.828125,
              "dy": 39.609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_02.EV_DOWN"
              }
            },
            "position": {
              "distance": 0.365428994179353,
              "offset": 11,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "vertices": [
          {
            "x": 621.640625,
            "y": -311.390625
          },
          {
            "x": 787.140625,
            "y": -335.390625
          }
        ],
        "z": 1770,
        "id": "120927bf-c437-4d9c-8bff-6ed9f2a4fe00",
        "parent": "61b5cd70-b979-4992-83fb-9bcaf27ac02a",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 97.5,
          "y": -681
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "z": 1772,
        "id": "6100a912-1f4c-4d24-920a-112262681942",
        "embeds": [
          "57eee379-1d3a-4440-ba8b-39ce5a0728d0"
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 97.5,
          "y": -666
        },
        "parent": "6100a912-1f4c-4d24-920a-112262681942",
        "z": 1773,
        "id": "57eee379-1d3a-4440-ba8b-39ce5a0728d0",
        "attrs": {
          "label": {
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "6100a912-1f4c-4d24-920a-112262681942"
        },
        "target": {
          "id": "45d78f3a-c4bc-42c1-9621-0822f54111df",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 95,
              "dy": 2,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "a902256e-37d8-41c6-a0ae-3015d46e4ac8",
        "z": 1774,
        "id": "bc8a540b-6f4f-493c-b7fc-ced1b1a02d6a",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 870,
          "y": -681
        },
        "size": {
          "width": 1133,
          "height": 396
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1834,
        "id": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "embeds": [
          "610e34dd-4231-49d5-af71-201183df99e5",
          "279bf6cb-a333-4def-91fb-0535a8e182a6",
          "324242a0-9c3e-4d23-92e5-fbe17935ec53",
          "49b1b5c0-f31f-42a0-bd40-15be045b2e6e",
          "ec45a9f6-4b9f-4e3c-855f-4a4cb9caed91",
          "4731c8c6-de84-4502-9c3b-eb4228dec342",
          "d008404b-dd42-46bd-808e-dfe82171f733",
          "d325273d-9b3e-43ec-ac93-4620a06cf681",
          "fa439a6b-3690-4968-9d60-0cf9813f3db4",
          "1783679a-d363-4fd0-b770-0421a27e168c",
          "f7237903-9396-4c9d-a493-8b0e311a94d3",
          "59af60c2-888a-4e07-b112-611968e1df31"
        ],
        "attrs": {
          "priority": {
            "text": 3
          },
          "name": {
            "text": "BT_03"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 926,
          "y": -614
        },
        "size": {
          "width": 89.484375,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1835,
        "id": "d325273d-9b3e-43ec-ac93-4620a06cf681",
        "embeds": [
          "0d3bdbb2-6305-4b5a-8868-eb4043bfd385"
        ],
        "attrs": {
          "name": {
            "text": "ST_BT_03_UP",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 939,
          "y": -681
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1836,
        "id": "fa439a6b-3690-4968-9d60-0cf9813f3db4",
        "embeds": [
          "cbbbb377-08fa-4cf9-ab32-be42793442a8"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 919,
          "y": -416
        },
        "size": {
          "width": 168,
          "height": 63
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1837,
        "id": "1783679a-d363-4fd0-b770-0421a27e168c",
        "embeds": [
          "62ae4327-cc8f-4ec7-aaa6-a4bb5d5f260c"
        ],
        "attrs": {
          "name": {
            "text": "ST_BT_03_RAISE",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nBT_03.tick--"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1292,
          "y": -614
        },
        "size": {
          "width": 121.703125,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1838,
        "id": "f7237903-9396-4c9d-a493-8b0e311a94d3",
        "embeds": [
          "d8c06000-2c14-4eab-b652-2ed8e113fd8b"
        ],
        "attrs": {
          "name": {
            "text": "ST_BT_03_FALL",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nBT_03.tick--"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 939,
          "y": -666
        },
        "parent": "fa439a6b-3690-4968-9d60-0cf9813f3db4",
        "z": 1848,
        "id": "cbbbb377-08fa-4cf9-ab32-be42793442a8",
        "attrs": {
          "label": {
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "fa439a6b-3690-4968-9d60-0cf9813f3db4"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 57,
              "dy": 52
            },
            "name": "topLeft"
          },
          "id": "d325273d-9b3e-43ec-ac93-4620a06cf681",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1849,
        "id": "d008404b-dd42-46bd-808e-dfe82171f733",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1783679a-d363-4fd0-b770-0421a27e168c"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 32,
              "dy": 43
            },
            "name": "topLeft"
          },
          "id": "d325273d-9b3e-43ec-ac93-4620a06cf681",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_03.tick == 0]"
              }
            },
            "position": {
              "distance": 0.5072463768115942,
              "offset": 59,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1849,
        "id": "4731c8c6-de84-4502-9c3b-eb4228dec342",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f7237903-9396-4c9d-a493-8b0e311a94d3"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 53,
              "dy": 53
            },
            "name": "topLeft"
          },
          "id": "d325273d-9b3e-43ec-ac93-4620a06cf681",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_03.EV_UP"
              }
            },
            "position": {
              "distance": 0.4959028547778302,
              "offset": 12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1849,
        "id": "ec45a9f6-4b9f-4e3c-855f-4a4cb9caed91",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d325273d-9b3e-43ec-ac93-4620a06cf681"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 41,
              "dy": 24
            },
            "name": "topLeft"
          },
          "id": "d325273d-9b3e-43ec-ac93-4620a06cf681",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_03.EV_UP"
              }
            },
            "position": {
              "distance": 0.6982238092234208,
              "offset": -11.15240478515625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "d325273d-9b3e-43ec-ac93-4620a06cf681",
        "vertices": [
          {
            "x": 899,
            "y": -620
          }
        ],
        "z": 1849,
        "id": "0d3bdbb2-6305-4b5a-8868-eb4043bfd385",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d325273d-9b3e-43ec-ac93-4620a06cf681"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 71.3515625,
              "dy": 8
            },
            "name": "topLeft"
          },
          "id": "f7237903-9396-4c9d-a493-8b0e311a94d3",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_03.EV_DOWN /BT_03.tick = 3"
              }
            },
            "position": {
              "distance": 0.43812853224734044,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1849,
        "id": "49b1b5c0-f31f-42a0-bd40-15be045b2e6e",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1783679a-d363-4fd0-b770-0421a27e168c"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 57,
              "dy": 29
            },
            "name": "topLeft"
          },
          "id": "1783679a-d363-4fd0-b770-0421a27e168c",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_03.tick > 0]"
              }
            },
            "position": {
              "distance": 0.27020518810218963,
              "offset": -13.000000000000055,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "1783679a-d363-4fd0-b770-0421a27e168c",
        "vertices": [
          {
            "x": 976,
            "y": -343
          },
          {
            "x": 899,
            "y": -343
          }
        ],
        "z": 1849,
        "id": "62ae4327-cc8f-4ec7-aaa6-a4bb5d5f260c",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1374,
          "y": -457
        },
        "size": {
          "width": 430,
          "height": 104
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1854,
        "id": "59af60c2-888a-4e07-b112-611968e1df31",
        "embeds": [
          "e20bd2a4-5db9-4967-a127-86c640c0d321"
        ],
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "attrs": {
          "name": {
            "text": "ST_BT_03_DOWN",
            "fontSize": 12
          },
          "specification": {
            "text": "entry /raise SENSOR_BARRERA.EV_SYS_01_BARRERA_ALTA; raise SENSOR_BARRERA.EV_SYS_01_BARRERA_BAJA"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1783679a-d363-4fd0-b770-0421a27e168c"
        },
        "target": {
          "id": "59af60c2-888a-4e07-b112-611968e1df31",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 5,
              "dy": 58,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_03.EV_DOWN"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "610e34dd-4231-49d5-af71-201183df99e5",
        "z": 1855,
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f7237903-9396-4c9d-a493-8b0e311a94d3"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 202,
              "dy": 53
            },
            "name": "topLeft"
          },
          "id": "59af60c2-888a-4e07-b112-611968e1df31",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_03.tick == 0]"
              }
            },
            "position": {
              "distance": 0.7618286539697422,
              "offset": -72.511962890625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1855,
        "id": "279bf6cb-a333-4def-91fb-0535a8e182a6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "59af60c2-888a-4e07-b112-611968e1df31"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 70,
              "dy": 56.31549072265625
            },
            "name": "topLeft"
          },
          "id": "1783679a-d363-4fd0-b770-0421a27e168c",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_03.EV_UP /BT_03.tick = 3"
              }
            },
            "position": {
              "distance": 0.4855795405052265,
              "offset": -15.000007324218698,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "46fcd8a1-b891-4ece-8e2b-fb0c0c8faf03",
        "z": 1855,
        "id": "324242a0-9c3e-4d23-92e5-fbe17935ec53",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "59af60c2-888a-4e07-b112-611968e1df31"
        },
        "target": {
          "id": "59af60c2-888a-4e07-b112-611968e1df31",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 103,
              "dy": 104,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_03.EV_DOWN"
              }
            },
            "position": {
              "distance": 0.4855910084851742,
              "offset": 12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "59af60c2-888a-4e07-b112-611968e1df31",
        "vertices": [
          {
            "x": 1649,
            "y": -332.390625
          },
          {
            "x": 1568,
            "y": -311
          }
        ],
        "z": 1855,
        "id": "e20bd2a4-5db9-4967-a127-86c640c0d321",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f7237903-9396-4c9d-a493-8b0e311a94d3"
        },
        "target": {
          "id": "f7237903-9396-4c9d-a493-8b0e311a94d3",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 104,
              "dy": 8,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_03.tick > 0]"
              }
            },
            "position": {
              "distance": 0.30018278995766684,
              "offset": -15.891652555776778,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "f7237903-9396-4c9d-a493-8b0e311a94d3",
        "vertices": [
          {
            "x": 1342,
            "y": -624
          },
          {
            "x": 1396,
            "y": -648
          }
        ],
        "z": 1856,
        "id": "d8c06000-2c14-4eab-b652-2ed8e113fd8b",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -172.8515625,
          "y": -681
        },
        "size": {
          "width": 121.703125,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1857,
        "id": "9efc9cf4-c36d-4408-abed-a9531c4651e0",
        "embeds": [
          "bde0faca-ac95-40de-9b7a-275865fb3d5c"
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "attrs": {
          "name": {
            "text": "ST_BT_01_FALL",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nBT_01.tick--"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "ff15f9e3-1f8d-422c-a9bb-f9769968c498"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 71.3515625,
              "dy": 8
            },
            "name": "topLeft"
          },
          "id": "9efc9cf4-c36d-4408-abed-a9531c4651e0",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_01.EV_DOWN /BT_01.tick = 3"
              }
            },
            "position": {
              "distance": 0.4711121056576373,
              "offset": -20.999999999999996,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1858,
        "id": "4a8263a3-3302-495b-b0cd-cb7b9bc14e8c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9efc9cf4-c36d-4408-abed-a9531c4651e0"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 53,
              "dy": 53
            },
            "name": "topLeft"
          },
          "id": "ff15f9e3-1f8d-422c-a9bb-f9769968c498",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_01.EV_UP"
              }
            },
            "position": {
              "distance": 0.4959028547778302,
              "offset": 12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1858,
        "id": "5c145fe1-8778-4364-b323-8c84a632e2b4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9efc9cf4-c36d-4408-abed-a9531c4651e0"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 61,
              "dy": 34
            },
            "name": "topLeft"
          },
          "id": "9efc9cf4-c36d-4408-abed-a9531c4651e0",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_01.tick > 0]"
              }
            },
            "position": {
              "distance": 0.2689958946436215,
              "offset": -17.57330322265625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "9efc9cf4-c36d-4408-abed-a9531c4651e0",
        "vertices": [
          {
            "x": -122.8515625,
            "y": -691
          },
          {
            "x": -62.8515625,
            "y": -715
          }
        ],
        "z": 1858,
        "id": "bde0faca-ac95-40de-9b7a-275865fb3d5c",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -400.1484375,
          "y": -457
        },
        "size": {
          "width": 349,
          "height": 60.390625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1861,
        "id": "6e84a73f-00fe-4390-bce1-7016a52758cd",
        "embeds": [
          "23f757c7-177e-44cc-9f4d-231a6200ace2"
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "attrs": {
          "name": {
            "text": "ST_BT_01_DOWN",
            "fontSize": 12
          },
          "specification": {
            "text": "entry /raise BOTON_BARRERA.EV_SYS_01_BOTON_BARRERA_DOWN"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "727d6e23-cd1b-47a5-b946-9a78642a7628"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 21,
              "dy": 13.00872802734375
            },
            "name": "topLeft"
          },
          "id": "6e84a73f-00fe-4390-bce1-7016a52758cd",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_01.EV_DOWN"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1862,
        "id": "f64b7898-7d41-47f1-9985-c92f6a0a6055",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6e84a73f-00fe-4390-bce1-7016a52758cd"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 70,
              "dy": 56.31549072265625
            },
            "name": "topLeft"
          },
          "id": "727d6e23-cd1b-47a5-b946-9a78642a7628",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_01.EV_UP /BT_01.tick = 3"
              }
            },
            "position": {
              "distance": 0.29489853802849264,
              "offset": -21.000007324218704,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "z": 1862,
        "id": "86781cca-dca3-48a1-ab7f-c3c5adab2222",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "6e84a73f-00fe-4390-bce1-7016a52758cd"
        },
        "target": {
          "id": "6e84a73f-00fe-4390-bce1-7016a52758cd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 241.171875,
              "dy": 55,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BT_01.EV_DOWN"
              }
            },
            "position": {
              "distance": 0.5521040858237612,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "vertices": [
          {
            "x": -276.15,
            "y": -346
          },
          {
            "x": -241.9765625,
            "y": -346
          },
          {
            "x": -158.9765625,
            "y": -374
          }
        ],
        "z": 1862,
        "id": "23f757c7-177e-44cc-9f4d-231a6200ace2",
        "parent": "6e84a73f-00fe-4390-bce1-7016a52758cd",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9efc9cf4-c36d-4408-abed-a9531c4651e0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 36,
              "dy": 55,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "6e84a73f-00fe-4390-bce1-7016a52758cd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 263.1484375,
              "dy": 1,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[BT_01.tick == 0]"
              }
            },
            "position": {
              "offset": 64,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "z": 1862,
        "id": "ff1bd55d-3b59-43c4-9c84-445f51d2e629",
        "vertices": [
          {
            "x": -136.85,
            "y": -489
          }
        ],
        "parent": "0bc7a64f-6153-48d6-9ce7-b8454a19b7c4",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 59,
          "y": -1469
        },
        "size": {
          "width": 1798,
          "height": 625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 1956,
        "id": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "embeds": [
          "5cbfecb5-94ea-485f-b8ad-5b1b888b9cc6",
          "bd45ff63-3b0a-42c9-bf60-527cc5638c7f",
          "1b60677a-9997-4566-af49-ad5394ced749",
          "05a53a82-002a-4fcd-a375-a290f2ccf14f",
          "43c55a73-5764-4e9e-ae7d-92511fb90c1a",
          "cc45ccd9-bb85-4abe-ad98-7db11f26e8b4",
          "be981722-1b0b-4697-b8f5-e89f19da0fe8",
          "353f70e0-97c2-47e8-a032-a7f606c4cf02",
          "e544789b-c936-42bc-b248-76685d7a57bb",
          "44023f87-ae7a-4339-b572-bc84b95a7053",
          "12142322-f795-4dc5-b81a-9367cdf49829",
          "9a1f43ad-9273-4595-8a29-36dfacc6e4f4",
          "f777115d-b0b2-4d5c-a056-096e4ca4e13d",
          "60551c0b-7f76-490e-8a8d-a3d4d249fce3"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "body": {
            "fill": "#FFFFFF"
          },
          "name": {
            "text": "SYSTEM_REGION"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 365.625,
          "y": -1387.5
        },
        "size": {
          "width": 295.09375,
          "height": 112.59375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1957,
        "id": "e544789b-c936-42bc-b248-76685d7a57bb",
        "embeds": [
          "4dc9368f-1c9b-4d78-b9bd-e0de8e35b35f"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_NO_HAY_AUTO_BARRERA_BAJA",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nraise BARRERA.OP_FRENAR_BARRERA_BAJA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1164.8046875,
          "y": -1387.5
        },
        "size": {
          "width": 272.515625,
          "height": 112.59375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1958,
        "id": "44023f87-ae7a-4339-b572-bc84b95a7053",
        "embeds": [
          "fa5be931-4fe3-4c80-ae26-9b761fa0e6da"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_HAY_AUTO_BARRERA_BAJA",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 365.625,
          "y": -1056
        },
        "size": {
          "width": 263,
          "height": 94
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1959,
        "id": "12142322-f795-4dc5-b81a-9367cdf49829",
        "embeds": [
          "c284a9fb-5a30-4acb-ae79-f4df4d4c82a2"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BARRERA_BAJANDO",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nraise BARRERA.OP_BAJAR_BARRERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1164.8046875,
          "y": -1206.8125
        },
        "size": {
          "width": 372.1953125,
          "height": 68
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1960,
        "id": "9a1f43ad-9273-4595-8a29-36dfacc6e4f4",
        "embeds": [
          "246c13f5-7641-4a00-bfea-664c692ef8f0"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BARRERA_SUBIENDO",
            "fontSize": 12
          },
          "specification": {
            "text": "entry /\nraise BARRERA.OP_SUBIR_BARRERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1164.8046875,
          "y": -1056
        },
        "size": {
          "width": 295.09375,
          "height": 94
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1961,
        "id": "f777115d-b0b2-4d5c-a056-096e4ca4e13d",
        "embeds": [
          "da960331-d8ef-4f6c-a49a-f0821cb54ac7"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BARRERA_ALTA ",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / \nraise BARRERA.OP_FRENAR_BARRERA_ALTA"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 694,
          "y": -1331
        },
        "size": {
          "height": 21,
          "width": 21
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1962,
        "id": "60551c0b-7f76-490e-8a8d-a3d4d249fce3",
        "embeds": [
          "96b6a4c2-586b-42ee-8fd4-c5a36db4b43f"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 697,
          "y": -1316
        },
        "parent": "60551c0b-7f76-490e-8a8d-a3d4d249fce3",
        "z": 1976,
        "id": "96b6a4c2-586b-42ee-8fd4-c5a36db4b43f",
        "attrs": {
          "label": {
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "fill": "#333333",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "f777115d-b0b2-4d5c-a056-096e4ca4e13d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 292.1953125,
              "dy": 80,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 159.1953125,
              "dy": 30
            },
            "name": "topLeft"
          },
          "id": "f777115d-b0b2-4d5c-a056-096e4ca4e13d",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_PRESENCIA.EV_SYS_01_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.5993233490225309,
              "offset": 60.1789411847025,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "f777115d-b0b2-4d5c-a056-096e4ca4e13d",
        "vertices": [
          {
            "x": 1534,
            "y": -976
          }
        ],
        "z": 1977,
        "id": "da960331-d8ef-4f6c-a49a-f0821cb54ac7",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9a1f43ad-9273-4595-8a29-36dfacc6e4f4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 366.1953125,
              "dy": 61.8125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "9a1f43ad-9273-4595-8a29-36dfacc6e4f4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 351.1953125,
              "dy": 6.8125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_PRESENCIA.EV_SYS_01_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.6429492220200038,
              "offset": 86.85092140232913,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "vertices": [
          {
            "x": 1590,
            "y": -1177
          }
        ],
        "z": 1977,
        "id": "246c13f5-7641-4a00-bfea-664c692ef8f0",
        "parent": "9a1f43ad-9273-4595-8a29-36dfacc6e4f4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9a1f43ad-9273-4595-8a29-36dfacc6e4f4"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 80.21090698242188,
              "dy": 13.065185546875
            },
            "name": "topLeft"
          },
          "id": "f777115d-b0b2-4d5c-a056-096e4ca4e13d",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_BARRERA.EV_SYS_01_BARRERA_ALTA"
              }
            },
            "position": {
              "distance": 0.5704225352112676,
              "offset": -137.0000042724609,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "vertices": [],
        "z": 1977,
        "id": "1b60677a-9997-4566-af49-ad5394ced749",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f777115d-b0b2-4d5c-a056-096e4ca4e13d"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 172.40625,
              "dy": 37
            },
            "name": "topLeft"
          },
          "id": "12142322-f795-4dc5-b81a-9367cdf49829",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "vertices": [],
        "z": 1977,
        "id": "05a53a82-002a-4fcd-a375-a290f2ccf14f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9a1f43ad-9273-4595-8a29-36dfacc6e4f4"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 164.390625,
              "dy": 10
            },
            "name": "topLeft"
          },
          "id": "12142322-f795-4dc5-b81a-9367cdf49829",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.3801842904669503,
              "offset": -14.000599646302494,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1977,
        "id": "cc45ccd9-bb85-4abe-ad98-7db11f26e8b4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "12142322-f795-4dc5-b81a-9367cdf49829",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 93.5234375,
              "dy": 8,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 23.375,
              "dy": 53
            },
            "name": "topLeft"
          },
          "id": "12142322-f795-4dc5-b81a-9367cdf49829",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.49544186354760317,
              "offset": 18.650561445514366,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "12142322-f795-4dc5-b81a-9367cdf49829",
        "vertices": [
          {
            "x": 423,
            "y": -1080
          },
          {
            "x": 329,
            "y": -1029
          }
        ],
        "z": 1977,
        "id": "c284a9fb-5a30-4acb-ae79-f4df4d4c82a2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "44023f87-ae7a-4339-b572-bc84b95a7053"
        },
        "target": {
          "id": "44023f87-ae7a-4339-b572-bc84b95a7053",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 262.1953125,
              "dy": 23.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BOTON_BARRERA.EV_SYS_01_BOTON_BARRERA_UP"
              }
            },
            "position": {
              "distance": 0.5844166702918807,
              "offset": 15.1119384765625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "44023f87-ae7a-4339-b572-bc84b95a7053",
        "vertices": [
          {
            "x": 1539,
            "y": -1328
          },
          {
            "x": 1462,
            "y": -1364
          }
        ],
        "z": 1977,
        "id": "fa5be931-4fe3-4c80-ae26-9b761fa0e6da",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "44023f87-ae7a-4339-b572-bc84b95a7053"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 100.00396728515625,
              "dy": 19.065185546875
            },
            "name": "topLeft"
          },
          "id": "9a1f43ad-9273-4595-8a29-36dfacc6e4f4",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "BOTON_BARRERA.EV_SYS_01_BOTON_BARRERA_DOWN"
              }
            },
            "position": {
              "distance": 0.22590665439152055,
              "offset": -160.55767578125005,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "vertices": [],
        "z": 1977,
        "id": "43c55a73-5764-4e9e-ae7d-92511fb90c1a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "60551c0b-7f76-490e-8a8d-a3d4d249fce3"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 5.75,
              "dy": 45.0684814453125
            },
            "name": "topLeft"
          },
          "id": "e544789b-c936-42bc-b248-76685d7a57bb",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1977,
        "id": "5cbfecb5-94ea-485f-b8ad-5b1b888b9cc6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 136.375,
              "dy": 7
            },
            "name": "topLeft"
          },
          "id": "12142322-f795-4dc5-b81a-9367cdf49829",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 136.375,
              "dy": 83.5
            },
            "name": "topLeft"
          },
          "id": "e544789b-c936-42bc-b248-76685d7a57bb",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_BARRERA.EV_SYS_01_BARRERA_BAJA"
              }
            },
            "position": {
              "distance": 0.8635882782248943,
              "offset": 126.69877395629217,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "vertices": [],
        "z": 1977,
        "id": "be981722-1b0b-4697-b8f5-e89f19da0fe8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 36.1953125,
              "dy": 19.5
            },
            "name": "topLeft"
          },
          "id": "44023f87-ae7a-4339-b572-bc84b95a7053",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 218,
              "dy": 19
            },
            "name": "topLeft"
          },
          "id": "e544789b-c936-42bc-b248-76685d7a57bb",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.5072373126388144,
              "offset": 11,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "vertices": [],
        "z": 1977,
        "id": "bd45ff63-3b0a-42c9-bf60-527cc5638c7f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "e544789b-c936-42bc-b248-76685d7a57bb"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 19.75,
              "dy": 34.0684814453125
            },
            "name": "topLeft"
          },
          "id": "e544789b-c936-42bc-b248-76685d7a57bb",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_PRESENCIA.EV_SYS_01_NO_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.4607969185612392,
              "offset": 14,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "e544789b-c936-42bc-b248-76685d7a57bb",
        "vertices": [
          {
            "x": 323,
            "y": -1424
          }
        ],
        "z": 1977,
        "id": "4dc9368f-1c9b-4d78-b9bd-e0de8e35b35f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "e544789b-c936-42bc-b248-76685d7a57bb"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 41.1953125,
              "dy": 95.5
            },
            "name": "topLeft"
          },
          "id": "44023f87-ae7a-4339-b572-bc84b95a7053",
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "SENSOR_PRESENCIA.EV_SYS_01_HAY_AUTO"
              }
            },
            "position": {
              "distance": 0.6058866341114596,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "parent": "47ce3cfe-ceb7-4cbb-92f0-62dca70ef2a0",
        "z": 1977,
        "id": "353f70e0-97c2-47e8-a032-a7f606c4cf02",
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "SensorSystemStatechart",
          "statemachinePrefix": "sensorSystemStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}