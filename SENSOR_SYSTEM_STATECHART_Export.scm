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
            "text": "@EventDriven\n@SuperSteps(no)\n@ParentFirstExecution\n\n//Actuador_Interno\ninterface ACTUATOR:\n    var tick:integer = 3\n    \ninterface SENSOR_PRESENCIA: \n    in event EV_SYS_01_HAY_AUTO\n    in event EV_SYS_01_NO_HAY_AUTO\n //var tick: integer\n\ninterface BOTON_BARRERA:\n    in event EV_SYS_01_BOTON_BARRERA_UP\n    in event EV_SYS_01_BOTON_BARRERA_DOWN\n    //var tick: integer\n    \ninterface SENSOR_BARRERA:\n    in event EV_SYS_01_BARRERA_ALTA\n    in event EV_SYS_01_BARRERA_BAJA\n\n//Interfaz sist-actuador    \ninterface BARRERA:\n    out event OP_SUBIR_BARRERA\n    out event OP_FRENAR_BARRERA_ALTA\n    out event OP_FRENAR_BARRERA_BAJA\n    out event OP_BAJAR_BARRERA\n    \ninterface BT_01:\n    var tick: integer\n    in event EV_UP\n    in event EV_DOWN\n    \ninterface BT_02:\n    var tick: integer\n    in event EV_UP\n    in event EV_DOWN\n    \ninterface BT_03:\n    var tick: integer\n    in event EV_UP\n    in event EV_DOWN"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -1220,
          "y": -661
        },
        "size": {
          "height": 443,
          "width": 1029
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 2789,
        "id": "872f96a1-5841-450f-8d97-91633148c5c6",
        "embeds": [
          "3d32888c-23bc-4093-8e6a-922b1eea4bf1",
          "9f654912-c6fc-49a0-be48-4d9dd686ff7f",
          "d8f26730-a565-4423-bb9d-2012af0ce30d",
          "fe910cc0-96c9-4955-b753-70c083bc17b8",
          "bdc78f22-b410-4e38-97f5-6d022d1d412d",
          "02c5b262-6f61-49e8-81d2-2fbec89a08f3",
          "979a7fb8-9d52-4d50-9d84-f0a4a5d164c7",
          "25cab4e2-7414-4637-ae08-6e367c56defd",
          "ac023b85-03b4-4f38-ada7-3c9f81b78e69",
          "b9c53861-72ef-45b0-afd0-f40801e4befe",
          "bd15d187-71d5-49d8-a477-8ed10bdeb7fb"
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
        "type": "Entry",
        "position": {
          "x": -938,
          "y": -661
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
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2790,
        "id": "979a7fb8-9d52-4d50-9d84-f0a4a5d164c7",
        "embeds": [
          "3ad7641d-04b1-4b4a-bcd4-01b0e616292e"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -737,
          "y": -396
        },
        "size": {
          "height": 60.390625,
          "width": 397.875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2791,
        "id": "25cab4e2-7414-4637-ae08-6e367c56defd",
        "embeds": [
          "d291e06c-ce26-4d9a-8927-2d63190a62dd"
        ],
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
        "type": "State",
        "position": {
          "x": -1094.140625,
          "y": -582.6953125
        },
        "size": {
          "height": 60.390625,
          "width": 391.28125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2792,
        "id": "ac023b85-03b4-4f38-ada7-3c9f81b78e69",
        "embeds": [
          "42a8ba6f-0391-494a-b290-ca8059820c04"
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
        "type": "State",
        "position": {
          "x": -464,
          "y": -582.6953125
        },
        "size": {
          "height": 60.390625,
          "width": 114.171875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2793,
        "id": "b9c53861-72ef-45b0-afd0-f40801e4befe",
        "embeds": [
          "f1df5ee4-cf6e-48ca-b965-d91c15970cc6"
        ],
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
        "type": "State",
        "position": {
          "x": -1115,
          "y": -396
        },
        "size": {
          "height": 60.390625,
          "width": 119
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2794,
        "id": "bd15d187-71d5-49d8-a477-8ed10bdeb7fb",
        "embeds": [
          "75026b63-1928-4be8-a4b7-6171ca41dc51"
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
          "x": -938,
          "y": -646
        },
        "parent": "979a7fb8-9d52-4d50-9d84-f0a4a5d164c7",
        "z": 2801,
        "id": "3ad7641d-04b1-4b4a-bcd4-01b0e616292e",
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
          "id": "b9c53861-72ef-45b0-afd0-f40801e4befe"
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
          "id": "ac023b85-03b4-4f38-ada7-3c9f81b78e69",
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
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2802,
        "id": "bdc78f22-b410-4e38-97f5-6d022d1d412d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 53,
              "dy": 1
            },
            "name": "topLeft"
          },
          "id": "bd15d187-71d5-49d8-a477-8ed10bdeb7fb",
          "priority": true
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
          "id": "ac023b85-03b4-4f38-ada7-3c9f81b78e69",
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
              "distance": 0.7409958943319672,
              "offset": 65.05743440324764,
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
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "vertices": [
          {
            "x": -1062,
            "y": -418
          },
          {
            "x": -1062.1399999999999,
            "y": -449
          }
        ],
        "z": 2802,
        "id": "3d32888c-23bc-4093-8e6a-922b1eea4bf1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "ac023b85-03b4-4f38-ada7-3c9f81b78e69"
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
          "id": "b9c53861-72ef-45b0-afd0-f40801e4befe",
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
              "distance": 0.4923648867766422,
              "offset": -20.000012207031205,
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
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2802,
        "id": "fe910cc0-96c9-4955-b753-70c083bc17b8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 72,
              "dy": 62.70404052734375
            },
            "name": "topLeft"
          },
          "id": "b9c53861-72ef-45b0-afd0-f40801e4befe",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 345,
              "dy": 0
            },
            "name": "topLeft"
          },
          "id": "25cab4e2-7414-4637-ae08-6e367c56defd",
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
              "distance": 0.4758045397436286,
              "offset": 72,
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
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2802,
        "id": "d8f26730-a565-4423-bb9d-2012af0ce30d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "25cab4e2-7414-4637-ae08-6e367c56defd"
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
          "id": "bd15d187-71d5-49d8-a477-8ed10bdeb7fb",
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
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2802,
        "id": "9f654912-c6fc-49a0-be48-4d9dd686ff7f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "979a7fb8-9d52-4d50-9d84-f0a4a5d164c7"
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
          "id": "ac023b85-03b4-4f38-ada7-3c9f81b78e69",
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
        "parent": "872f96a1-5841-450f-8d97-91633148c5c6",
        "z": 2802,
        "id": "02c5b262-6f61-49e8-81d2-2fbec89a08f3",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "ac023b85-03b4-4f38-ada7-3c9f81b78e69"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 0,
              "dy": 14
            },
            "name": "topLeft"
          },
          "id": "ac023b85-03b4-4f38-ada7-3c9f81b78e69",
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
              "distance": 0.5804407085932761,
              "offset": -31.689046649023386,
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
        "parent": "ac023b85-03b4-4f38-ada7-3c9f81b78e69",
        "vertices": [
          {
            "x": -1136,
            "y": -542.7
          }
        ],
        "z": 2803,
        "id": "42a8ba6f-0391-494a-b290-ca8059820c04",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 12,
              "dy": 57
            },
            "name": "topLeft"
          },
          "id": "bd15d187-71d5-49d8-a477-8ed10bdeb7fb",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 0,
              "dy": 15
            },
            "name": "topLeft"
          },
          "id": "bd15d187-71d5-49d8-a477-8ed10bdeb7fb",
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
              "distance": 0.7026903597511548,
              "offset": -26.697025806526558,
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
        "parent": "bd15d187-71d5-49d8-a477-8ed10bdeb7fb",
        "vertices": [
          {
            "x": -1157,
            "y": -367
          }
        ],
        "z": 2805,
        "id": "75026b63-1928-4be8-a4b7-6171ca41dc51",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 103,
              "dy": 52.6953125
            },
            "name": "topLeft"
          },
          "id": "b9c53861-72ef-45b0-afd0-f40801e4befe",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 113,
              "dy": 19.6953125
            },
            "name": "topLeft"
          },
          "id": "b9c53861-72ef-45b0-afd0-f40801e4befe",
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
              "distance": 0.6361219238073286,
              "offset": 33.96236121961451,
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
        "parent": "b9c53861-72ef-45b0-afd0-f40801e4befe",
        "vertices": [
          {
            "x": -312,
            "y": -530
          },
          {
            "x": -312,
            "y": -558
          }
        ],
        "z": 2806,
        "id": "f1df5ee4-cf6e-48ca-b965-d91c15970cc6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "25cab4e2-7414-4637-ae08-6e367c56defd"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 333,
              "dy": 47
            },
            "name": "topLeft"
          },
          "id": "25cab4e2-7414-4637-ae08-6e367c56defd",
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
        "parent": "25cab4e2-7414-4637-ae08-6e367c56defd",
        "vertices": [
          {
            "x": -595,
            "y": -326
          },
          {
            "x": -460,
            "y": -293
          }
        ],
        "z": 2807,
        "id": "d291e06c-ce26-4d9a-8927-2d63190a62dd",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -85.6796875,
          "y": -661
        },
        "size": {
          "height": 443,
          "width": 1053
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 3168,
        "id": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "embeds": [
          "e05eb523-1807-4703-89a7-174894a98dfa",
          "78c9e1a0-4c95-496d-88b2-6631cac8cfb8",
          "7bf56baa-975b-445a-9996-3c7630f783d5",
          "ecf97355-ba85-493c-8f31-a395c70c89ab",
          "e48d0daf-fef4-4ec8-80f1-61bc37f14bcb",
          "ed3b6293-ae41-4c00-82ca-6db662b364d4",
          "63b90057-f683-4365-8950-8bce34e1710d",
          "f387718b-287f-4cd7-9d58-c43a0bd48620",
          "c82cf337-1554-4acc-b8ba-5053fff495cf",
          "c89f4b54-1525-4077-8f87-68efd5c8b1fd",
          "c698186b-98d9-40bb-bc40-90c3bd75959d",
          "07bc67b1-3208-48fa-8a52-3f907232830b"
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
          "x": 57.515625,
          "y": -594
        },
        "size": {
          "height": 75,
          "width": 378.078125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3169,
        "id": "f387718b-287f-4cd7-9d58-c43a0bd48620",
        "embeds": [
          "ceff272e-d9ed-47cc-a442-11b3339db3cf"
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
        "type": "Entry",
        "position": {
          "x": 77.515625,
          "y": -661
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
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3170,
        "id": "c82cf337-1554-4acc-b8ba-5053fff495cf",
        "embeds": [
          "1efc7b45-b184-47cd-8f31-3a771dc21115"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 57.515625,
          "y": -396
        },
        "size": {
          "height": 60.390625,
          "width": 119
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3171,
        "id": "c89f4b54-1525-4077-8f87-68efd5c8b1fd",
        "embeds": [
          "472af2dc-3f1d-4b85-9896-7100d5b361a1"
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
        "type": "State",
        "position": {
          "x": 461.6875,
          "y": -399.609375
        },
        "size": {
          "height": 75,
          "width": 351.6875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3172,
        "id": "c698186b-98d9-40bb-bc40-90c3bd75959d",
        "embeds": [
          "d3580584-c4db-4780-943e-7cb9f94b8334"
        ],
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
        "type": "State",
        "position": {
          "x": 686.3203125,
          "y": -575.6953125
        },
        "size": {
          "height": 60.390625,
          "width": 114.171875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3173,
        "id": "07bc67b1-3208-48fa-8a52-3f907232830b",
        "embeds": [
          "bebbc1d8-daf4-4cf6-885b-2c1d35afedaf"
        ],
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
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 77.515625,
          "y": -646
        },
        "parent": "c82cf337-1554-4acc-b8ba-5053fff495cf",
        "z": 3182,
        "id": "1efc7b45-b184-47cd-8f31-3a771dc21115",
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
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 83.8046875,
              "dy": 54
            },
            "name": "topLeft"
          },
          "id": "07bc67b1-3208-48fa-8a52-3f907232830b",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 308.6328125,
              "dy": 28.609375
            },
            "name": "topLeft"
          },
          "id": "c698186b-98d9-40bb-bc40-90c3bd75959d",
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
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3183,
        "id": "e05eb523-1807-4703-89a7-174894a98dfa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c698186b-98d9-40bb-bc40-90c3bd75959d"
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
          "id": "c89f4b54-1525-4077-8f87-68efd5c8b1fd",
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
              "distance": 0.4877659612765931,
              "offset": -14.000007324218757,
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
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3183,
        "id": "e48d0daf-fef4-4ec8-80f1-61bc37f14bcb",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c89f4b54-1525-4077-8f87-68efd5c8b1fd"
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
          "id": "c698186b-98d9-40bb-bc40-90c3bd75959d",
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
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3183,
        "id": "ecf97355-ba85-493c-8f31-a395c70c89ab",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "07bc67b1-3208-48fa-8a52-3f907232830b"
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
          "id": "f387718b-287f-4cd7-9d58-c43a0bd48620",
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
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3183,
        "id": "7bf56baa-975b-445a-9996-3c7630f783d5",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c82cf337-1554-4acc-b8ba-5053fff495cf"
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
          "id": "f387718b-287f-4cd7-9d58-c43a0bd48620",
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
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3183,
        "id": "63b90057-f683-4365-8950-8bce34e1710d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c89f4b54-1525-4077-8f87-68efd5c8b1fd"
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
          "id": "f387718b-287f-4cd7-9d58-c43a0bd48620",
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
              "distance": 0.4991162307863313,
              "offset": 68.9999969482422,
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
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3183,
        "id": "ed3b6293-ae41-4c00-82ca-6db662b364d4",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 2,
              "dy": 16
            },
            "name": "topLeft"
          },
          "id": "f387718b-287f-4cd7-9d58-c43a0bd48620",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 3,
              "dy": 56
            },
            "name": "topLeft"
          },
          "id": "f387718b-287f-4cd7-9d58-c43a0bd48620",
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
              "distance": 0.4752561064284922,
              "offset": 49.35152053833008,
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
        "parent": "f387718b-287f-4cd7-9d58-c43a0bd48620",
        "vertices": [
          {
            "x": 36.515625,
            "y": -578
          }
        ],
        "z": 3183,
        "id": "ceff272e-d9ed-47cc-a442-11b3339db3cf",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f387718b-287f-4cd7-9d58-c43a0bd48620"
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
          "id": "07bc67b1-3208-48fa-8a52-3f907232830b",
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
              "distance": 0.44373787184000835,
              "offset": -18.000012207031205,
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
        "parent": "38bfd07c-5670-4d45-8b48-861784d5bc5b",
        "z": 3183,
        "id": "78c9e1a0-4c95-496d-88b2-6631cac8cfb8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c89f4b54-1525-4077-8f87-68efd5c8b1fd"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 6,
              "dy": 52
            },
            "name": "topLeft"
          },
          "id": "c89f4b54-1525-4077-8f87-68efd5c8b1fd",
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
              "distance": 0.4538313445052066,
              "offset": 60.77964299917221,
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
        "parent": "c89f4b54-1525-4077-8f87-68efd5c8b1fd",
        "vertices": [
          {
            "x": 33.515625,
            "y": -387
          },
          {
            "x": 33.515625,
            "y": -347
          }
        ],
        "z": 3183,
        "id": "472af2dc-3f1d-4b85-9896-7100d5b361a1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 343.6328125,
              "dy": 15.609375
            },
            "name": "topLeft"
          },
          "id": "c698186b-98d9-40bb-bc40-90c3bd75959d",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 344.6328125,
              "dy": 49.609375
            },
            "name": "topLeft"
          },
          "id": "c698186b-98d9-40bb-bc40-90c3bd75959d",
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
              "distance": 0.38423328085684183,
              "offset": -22.30345298781938,
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
        "parent": "c698186b-98d9-40bb-bc40-90c3bd75959d",
        "vertices": [
          {
            "x": 890.3203125,
            "y": -384
          },
          {
            "x": 890.3203125,
            "y": -350
          }
        ],
        "z": 3184,
        "id": "d3580584-c4db-4780-943e-7cb9f94b8334",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 113,
              "dy": 4.6953125
            },
            "name": "topLeft"
          },
          "id": "07bc67b1-3208-48fa-8a52-3f907232830b",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 103,
              "dy": 37.6953125
            },
            "name": "topLeft"
          },
          "id": "07bc67b1-3208-48fa-8a52-3f907232830b",
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
              "distance": 0.40944345984071134,
              "offset": -27.83831104533046,
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
        "parent": "07bc67b1-3208-48fa-8a52-3f907232830b",
        "vertices": [
          {
            "x": 878.3203125,
            "y": -538
          },
          {
            "x": 839.3203125,
            "y": -538
          }
        ],
        "z": 3185,
        "id": "bebbc1d8-daf4-4cf6-885b-2c1d35afedaf",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 1049,
          "y": -661
        },
        "size": {
          "height": 443,
          "width": 1248
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 3205,
        "id": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "embeds": [
          "da629f8f-251f-4d5d-8a7b-868fd7a49ea3",
          "a156738c-baa9-4fe8-973c-259031318746",
          "7865e004-1958-43c8-968f-ae6cb753d49b",
          "1dff2fc1-985a-479b-a9bd-82dfee0a89ae",
          "c8fac571-7e47-452e-8c9a-b427677beb37",
          "10b6bafa-4675-49b7-8bc7-9ba9b7700d09",
          "c75b6ca9-1b18-46f0-9fec-52ef61bf33ba",
          "39be9bee-04c9-4374-b920-f91b98707cc2",
          "fe53186d-be56-4cb5-bab4-5a8ad349f842",
          "fbf0b03d-1e0a-4ab1-87db-e19220f197c1",
          "3fb4e7b4-4ce2-4a02-a215-d18d31776e86",
          "d74199da-f3b6-4b4a-9cb9-76dd2cd5c030"
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
          "x": 1207.21875,
          "y": -594
        },
        "size": {
          "height": 60.390625,
          "width": 84
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3206,
        "id": "39be9bee-04c9-4374-b920-f91b98707cc2",
        "embeds": [
          "2aff1d2d-a076-46fc-966e-1d8cf606d900"
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
          "x": 1220.21875,
          "y": -661
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
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3207,
        "id": "fe53186d-be56-4cb5-bab4-5a8ad349f842",
        "embeds": [
          "9d3bfa2a-3a91-43d5-a766-5b822682b2b5"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1786.21875,
          "y": -597
        },
        "size": {
          "height": 60.390625,
          "width": 114.171875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3208,
        "id": "fbf0b03d-1e0a-4ab1-87db-e19220f197c1",
        "embeds": [
          "e2d36e4b-84ee-4f16-860f-e8200e28c9a5"
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
        "type": "State",
        "position": {
          "x": 1634.21875,
          "y": -442.609375
        },
        "size": {
          "height": 78,
          "width": 573
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3209,
        "id": "3fb4e7b4-4ce2-4a02-a215-d18d31776e86",
        "embeds": [
          "ff9a4545-82a7-41f1-a4c9-d6cec610e6d6"
        ],
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
        "type": "State",
        "position": {
          "x": 1204.1171875,
          "y": -398
        },
        "size": {
          "height": 60.390625,
          "width": 119
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3210,
        "id": "d74199da-f3b6-4b4a-9cb9-76dd2cd5c030",
        "embeds": [
          "e293567b-9826-40e5-b47a-579a32d2bd6d"
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
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 1220.21875,
          "y": -646
        },
        "parent": "fe53186d-be56-4cb5-bab4-5a8ad349f842",
        "z": 3219,
        "id": "9d3bfa2a-3a91-43d5-a766-5b822682b2b5",
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
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 96,
              "dy": 25
            },
            "name": "topLeft"
          },
          "id": "d74199da-f3b6-4b4a-9cb9-76dd2cd5c030",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 38,
              "dy": 69.61810302734375
            },
            "name": "topLeft"
          },
          "id": "3fb4e7b4-4ce2-4a02-a215-d18d31776e86",
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
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3220,
        "id": "7865e004-1958-43c8-968f-ae6cb753d49b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3fb4e7b4-4ce2-4a02-a215-d18d31776e86"
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
          "id": "d74199da-f3b6-4b4a-9cb9-76dd2cd5c030",
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
              "distance": 0.09882010665594362,
              "offset": -14.000007324218755,
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
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3220,
        "id": "da629f8f-251f-4d5d-8a7b-868fd7a49ea3",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fbf0b03d-1e0a-4ab1-87db-e19220f197c1"
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
          "id": "3fb4e7b4-4ce2-4a02-a215-d18d31776e86",
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
              "offset": 64,
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
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3220,
        "id": "1dff2fc1-985a-479b-a9bd-82dfee0a89ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fbf0b03d-1e0a-4ab1-87db-e19220f197c1"
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
          "id": "39be9bee-04c9-4374-b920-f91b98707cc2",
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
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3220,
        "id": "10b6bafa-4675-49b7-8bc7-9ba9b7700d09",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d74199da-f3b6-4b4a-9cb9-76dd2cd5c030"
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
          "id": "39be9bee-04c9-4374-b920-f91b98707cc2",
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
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3220,
        "id": "a156738c-baa9-4fe8-973c-259031318746",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fe53186d-be56-4cb5-bab4-5a8ad349f842"
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
          "id": "39be9bee-04c9-4374-b920-f91b98707cc2",
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
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3220,
        "id": "c75b6ca9-1b18-46f0-9fec-52ef61bf33ba",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "39be9bee-04c9-4374-b920-f91b98707cc2"
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
          "id": "fbf0b03d-1e0a-4ab1-87db-e19220f197c1",
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
        "parent": "425b3a41-207a-46ad-b3ee-aa0571c839c0",
        "z": 3220,
        "id": "c8fac571-7e47-452e-8c9a-b427677beb37",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "39be9bee-04c9-4374-b920-f91b98707cc2"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 11,
              "dy": 45
            },
            "name": "topLeft"
          },
          "id": "39be9bee-04c9-4374-b920-f91b98707cc2",
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
              "distance": 0.2719491529201387,
              "offset": 27.89477243255327,
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
        "parent": "39be9bee-04c9-4374-b920-f91b98707cc2",
        "vertices": [
          {
            "x": 1179.21875,
            "y": -590
          }
        ],
        "z": 3220,
        "id": "2aff1d2d-a076-46fc-966e-1d8cf606d900",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fbf0b03d-1e0a-4ab1-87db-e19220f197c1"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 104.28125,
              "dy": 47
            },
            "name": "topLeft"
          },
          "id": "fbf0b03d-1e0a-4ab1-87db-e19220f197c1",
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
              "distance": 0.3681066684155735,
              "offset": -69.90642184012623,
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
        "parent": "fbf0b03d-1e0a-4ab1-87db-e19220f197c1",
        "vertices": [
          {
            "x": 1922.5,
            "y": -583
          },
          {
            "x": 1922.5,
            "y": -563
          }
        ],
        "z": 3220,
        "id": "e2d36e4b-84ee-4f16-860f-e8200e28c9a5",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 504.28125,
              "dy": 78.609375
            },
            "name": "topLeft"
          },
          "id": "3fb4e7b4-4ce2-4a02-a215-d18d31776e86",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 361.28125,
              "dy": 62.609375
            },
            "name": "topLeft"
          },
          "id": "3fb4e7b4-4ce2-4a02-a215-d18d31776e86",
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
        "parent": "3fb4e7b4-4ce2-4a02-a215-d18d31776e86",
        "vertices": [
          {
            "x": 1999.5,
            "y": -312
          }
        ],
        "z": 3221,
        "id": "ff9a4545-82a7-41f1-a4c9-d6cec610e6d6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 5,
              "dy": 47
            },
            "name": "topLeft"
          },
          "id": "d74199da-f3b6-4b4a-9cb9-76dd2cd5c030",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 37,
              "dy": 16
            },
            "name": "topLeft"
          },
          "id": "d74199da-f3b6-4b4a-9cb9-76dd2cd5c030",
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
              "distance": 0.6665555886789745,
              "offset": -49.093367641671,
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
        "parent": "d74199da-f3b6-4b4a-9cb9-76dd2cd5c030",
        "vertices": [
          {
            "x": 1183.1171875,
            "y": -351
          }
        ],
        "z": 3222,
        "id": "e293567b-9826-40e5-b47a-579a32d2bd6d",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -411,
          "y": -1354
        },
        "size": {
          "height": 625,
          "width": 1798
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 3223,
        "id": "bd344f69-8792-445b-bee3-fc817d59478a",
        "embeds": [
          "eae7d46c-bb6a-4d06-b903-52a45ca32ca7",
          "54d92aee-3864-4bc9-b481-b1f0de5e9303",
          "013dce87-4a7d-4e82-8448-b4811686c1fa",
          "a70afc15-aac9-43d3-bcb9-5c8e10ed679b",
          "9274caa6-ed07-4f59-babb-99cf10ca8725",
          "ddca5121-bd40-421c-b9ed-89d977eddea6",
          "0d303d75-a087-4f02-aec0-b3e3508ea01c",
          "799d9a20-4ea1-4764-ad3d-3c0fd1841521",
          "a472f0fa-9379-4fab-b041-047ece8fee10",
          "86ff9ef0-549e-48e6-85a0-0edc9ff505b5",
          "5deb337a-ad72-468a-95cc-3e9e2df458d9",
          "a341c9d8-6c95-4f9d-8b8d-8e7d4b1ba1e4",
          "94ecd562-272a-4bb6-a992-25a799101041",
          "42d5889e-d320-4e95-8224-9f9511d55acd"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "SYSTEM_REGION"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -104.375,
          "y": -1272.5
        },
        "size": {
          "height": 112.59375,
          "width": 295.09375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3224,
        "id": "a472f0fa-9379-4fab-b041-047ece8fee10",
        "embeds": [
          "3688ebba-fb28-49a7-a02f-56ef411ff1cf"
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
          "x": 694.8046875,
          "y": -1272.5
        },
        "size": {
          "height": 112.59375,
          "width": 272.515625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3225,
        "id": "86ff9ef0-549e-48e6-85a0-0edc9ff505b5",
        "embeds": [
          "92c0b11c-01b4-485e-83de-3da1ba09c6c8"
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
          "x": -104.375,
          "y": -941
        },
        "size": {
          "height": 94,
          "width": 263
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3226,
        "id": "5deb337a-ad72-468a-95cc-3e9e2df458d9",
        "embeds": [
          "fcc6ad33-e095-436a-8a97-a8136a1587e1"
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
          "x": 694.8046875,
          "y": -1091.8125
        },
        "size": {
          "height": 68,
          "width": 372.1953125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3227,
        "id": "a341c9d8-6c95-4f9d-8b8d-8e7d4b1ba1e4",
        "embeds": [
          "55dd723e-4e53-45ad-8259-a930981760cf"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BARRERA_SUBIENDO",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / raise BARRERA.OP_SUBIR_BARRERA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 666.8984375,
          "y": -941
        },
        "size": {
          "height": 94,
          "width": 352.890625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3228,
        "id": "94ecd562-272a-4bb6-a992-25a799101041",
        "embeds": [
          "c2d85177-e326-4b95-998e-e95e261cd835"
        ],
        "attrs": {
          "name": {
            "text": "ST_SYS_01_BARRERA_ALTA ",
            "fontSize": 12
          },
          "specification": {
            "text": "entry / raise BARRERA.OP_FRENAR_BARRERA_ALTA"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 224,
          "y": -1216
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3229,
        "id": "42d5889e-d320-4e95-8224-9f9511d55acd",
        "embeds": [
          "1156912d-d2d8-4be8-a9a9-b009749f38cc"
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
          "x": 227,
          "y": -1201
        },
        "parent": "42d5889e-d320-4e95-8224-9f9511d55acd",
        "z": 3243,
        "id": "1156912d-d2d8-4be8-a9a9-b009749f38cc",
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
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 292.1953125,
              "dy": 80
            },
            "name": "topLeft"
          },
          "id": "94ecd562-272a-4bb6-a992-25a799101041",
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
          "id": "94ecd562-272a-4bb6-a992-25a799101041",
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
        "parent": "94ecd562-272a-4bb6-a992-25a799101041",
        "vertices": [
          {
            "x": 1097,
            "y": -861
          }
        ],
        "z": 3244,
        "id": "c2d85177-e326-4b95-998e-e95e261cd835",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 366.1953125,
              "dy": 61.8125
            },
            "name": "topLeft"
          },
          "id": "a341c9d8-6c95-4f9d-8b8d-8e7d4b1ba1e4",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 351.1953125,
              "dy": 6.8125
            },
            "name": "topLeft"
          },
          "id": "a341c9d8-6c95-4f9d-8b8d-8e7d4b1ba1e4",
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
        "parent": "a341c9d8-6c95-4f9d-8b8d-8e7d4b1ba1e4",
        "vertices": [
          {
            "x": 1120,
            "y": -1062
          }
        ],
        "z": 3244,
        "id": "55dd723e-4e53-45ad-8259-a930981760cf",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a341c9d8-6c95-4f9d-8b8d-8e7d4b1ba1e4"
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
          "id": "94ecd562-272a-4bb6-a992-25a799101041",
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "vertices": [],
        "z": 3244,
        "id": "013dce87-4a7d-4e82-8448-b4811686c1fa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a341c9d8-6c95-4f9d-8b8d-8e7d4b1ba1e4"
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
          "id": "5deb337a-ad72-468a-95cc-3e9e2df458d9",
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3244,
        "id": "ddca5121-bd40-421c-b9ed-89d977eddea6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "94ecd562-272a-4bb6-a992-25a799101041"
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
          "id": "5deb337a-ad72-468a-95cc-3e9e2df458d9",
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "vertices": [],
        "z": 3244,
        "id": "a70afc15-aac9-43d3-bcb9-5c8e10ed679b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 93.5234375,
              "dy": 8
            },
            "name": "topLeft"
          },
          "id": "5deb337a-ad72-468a-95cc-3e9e2df458d9",
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
          "id": "5deb337a-ad72-468a-95cc-3e9e2df458d9",
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
        "parent": "5deb337a-ad72-468a-95cc-3e9e2df458d9",
        "vertices": [
          {
            "x": -47,
            "y": -965
          },
          {
            "x": -141,
            "y": -914
          }
        ],
        "z": 3244,
        "id": "fcc6ad33-e095-436a-8a97-a8136a1587e1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "86ff9ef0-549e-48e6-85a0-0edc9ff505b5"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 262.1953125,
              "dy": 23.5
            },
            "name": "topLeft"
          },
          "id": "86ff9ef0-549e-48e6-85a0-0edc9ff505b5",
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
              "distance": 0.5557587158303378,
              "offset": 60.48830498640644,
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
        "parent": "86ff9ef0-549e-48e6-85a0-0edc9ff505b5",
        "vertices": [
          {
            "x": 1069,
            "y": -1213
          },
          {
            "x": 992,
            "y": -1249
          }
        ],
        "z": 3244,
        "id": "92c0b11c-01b4-485e-83de-3da1ba09c6c8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "86ff9ef0-549e-48e6-85a0-0edc9ff505b5"
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
          "id": "a341c9d8-6c95-4f9d-8b8d-8e7d4b1ba1e4",
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "vertices": [],
        "z": 3244,
        "id": "9274caa6-ed07-4f59-babb-99cf10ca8725",
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
          "id": "5deb337a-ad72-468a-95cc-3e9e2df458d9",
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
          "id": "a472f0fa-9379-4fab-b041-047ece8fee10",
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "vertices": [],
        "z": 3244,
        "id": "0d303d75-a087-4f02-aec0-b3e3508ea01c",
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
          "id": "86ff9ef0-549e-48e6-85a0-0edc9ff505b5",
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
          "id": "a472f0fa-9379-4fab-b041-047ece8fee10",
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "vertices": [],
        "z": 3244,
        "id": "54d92aee-3864-4bc9-b481-b1f0de5e9303",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "42d5889e-d320-4e95-8224-9f9511d55acd"
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
          "id": "a472f0fa-9379-4fab-b041-047ece8fee10",
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3244,
        "id": "eae7d46c-bb6a-4d06-b903-52a45ca32ca7",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a472f0fa-9379-4fab-b041-047ece8fee10"
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
          "id": "a472f0fa-9379-4fab-b041-047ece8fee10",
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
        "parent": "a472f0fa-9379-4fab-b041-047ece8fee10",
        "vertices": [
          {
            "x": -147,
            "y": -1309
          }
        ],
        "z": 3244,
        "id": "3688ebba-fb28-49a7-a02f-56ef411ff1cf",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a472f0fa-9379-4fab-b041-047ece8fee10"
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
          "id": "86ff9ef0-549e-48e6-85a0-0edc9ff505b5",
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
        "parent": "bd344f69-8792-445b-bee3-fc817d59478a",
        "z": 3244,
        "id": "799d9a20-4ea1-4764-ad3d-3c0fd1841521",
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