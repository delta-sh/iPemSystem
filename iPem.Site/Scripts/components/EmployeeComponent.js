﻿Ext.define("Ext.ux.EmployeeMultiTreePanel", {
    extend: "Ext.ux.TreePicker",
    xtype: "employee.multi.treepanel",
    fieldLabel: $$iPems.lang.Component.Employee,
    displayField: 'text',
    labelWidth: 60,
    width: 280,
    selectOnLeaf: true,
    multiSelect: true,
    searchVisible: true,
    searchChange: function (me, newValue, oldValue) {
        delete me._filterData;
        delete me._filterIndex;
    },
    initComponent: function () {
        var me = this,
            store = me.store;

        me.callParent(arguments);
        store.proxy.extraParams.multiselect = me.multiSelect;
        store.load();
    },
    listeners: {
        search: function (me, field, text) {
            var picker = me.getPicker(),
                separator = '/',
                root = picker.getRootNode();

            if (Ext.isEmpty(text, false)) {
                return;
            }

            if (text.length < 2) {
                return;
            }

            if (!picker)
                return;

            if (field._filterData != null && field._filterIndex != null) {
                var index = field._filterIndex + 1;
                var paths = field._filterData;
                if (index >= paths.length) {
                    index = 0;
                }

                var nodes = Ext.Array.from(paths[index]);
                var path = Ext.String.format("{0}{1}{0}{2}", separator, root.getId(), nodes.join(separator));
                picker.selectPath(path);
                field._filterIndex = index;
            } else {
                Ext.Ajax.request({
                    url: '/Component/FilterEmployeePath',
                    params: { text: text },
                    mask: new Ext.LoadMask({ target: picker, msg: $$iPems.lang.AjaxHandling }),
                    success: function (response, options) {
                        var data = Ext.decode(response.responseText, true);
                        if (data.success) {
                            var len = data.data.length;
                            if (len > 0) {
                                var nodes = Ext.Array.from(data.data[0]);
                                var path = Ext.String.format("{0}{1}{0}{2}", separator, root.getId(), nodes.join(separator));
                                picker.selectPath(path);

                                field._filterData = data.data;
                                field._filterIndex = 0;
                            }
                        } else {
                            Ext.Msg.show({ title: $$iPems.lang.SysErrorTitle, msg: data.message, buttons: Ext.Msg.OK, icon: Ext.Msg.ERROR });
                        }
                    }
                });
            }
        },
        syncselect: function (me, selection) {
            var picker = me.getPicker(),
                separator = '/',
                root;

            Ext.Ajax.request({
                url: '/Component/GetEmployeePath',
                params: { nodes: selection },
                success: function (response, options) {
                    var data = Ext.decode(response.responseText, true);
                    if (data.success && picker) {
                        root = picker.getRootNode();
                        Ext.Array.each(data.data, function (item, index, all) {
                            item = Ext.Array.from(item);

                            var path = Ext.String.format("{0}{1}{0}{2}", separator, root.getId(), item.join(separator));
                            picker.expandPath(path);
                        });
                    }
                }
            });
        }
    },
    store: Ext.create('Ext.data.TreeStore', {
        root: {
            id: 'root',
            text: 'Root',
            root: true
        },
        proxy: {
            type: 'ajax',
            url: '/Component/GetEmployees',
            reader: {
                type: 'json',
                successProperty: 'success',
                messageProperty: 'message',
                totalProperty: 'total',
                root: 'data'
            }
        }
    })
});

Ext.define("Ext.ux.EmployeeTreePanel", {
    extend: "Ext.ux.TreePicker",
    xtype: "employee.treepanel",
    fieldLabel: $$iPems.lang.Component.Employee,
    displayField: 'text',
    labelWidth: 60,
    width: 280,
    selectOnLeaf: true,
    multiSelect: false,
    searchVisible: true,
    searchChange: function (me, newValue, oldValue) {
        delete me._filterData;
        delete me._filterIndex;
    },
    initComponent: function () {
        var me = this,
            store = me.store;

        me.callParent(arguments);
        store.proxy.extraParams.multiselect = me.multiSelect;
        store.load();
    },
    listeners: {
        search: function (me, field, text) {
            var picker = me.getPicker(),
                separator = '/',
                root = picker.getRootNode();

            if (Ext.isEmpty(text, false)) {
                return;
            }

            if (text.length < 2) {
                return;
            }

            if (!picker)
                return;

            if (field._filterData != null && field._filterIndex != null) {
                var index = field._filterIndex + 1;
                var paths = field._filterData;
                if (index >= paths.length) {
                    index = 0;
                }

                var nodes = Ext.Array.from(paths[index]);
                var path = Ext.String.format("{0}{1}{0}{2}", separator, root.getId(), nodes.join(separator));
                picker.selectPath(path);
                field._filterIndex = index;
            } else {
                Ext.Ajax.request({
                    url: '/Component/FilterEmployeePath',
                    params: { text: text },
                    mask: new Ext.LoadMask({ target: picker, msg: $$iPems.lang.AjaxHandling }),
                    success: function (response, options) {
                        var data = Ext.decode(response.responseText, true);
                        if (data.success) {
                            var len = data.data.length;
                            if (len > 0) {
                                var nodes = Ext.Array.from(data.data[0]);
                                var path = Ext.String.format("{0}{1}{0}{2}", separator, root.getId(), nodes.join(separator));
                                picker.selectPath(path);

                                field._filterData = data.data;
                                field._filterIndex = 0;
                            }
                        } else {
                            Ext.Msg.show({ title: $$iPems.lang.SysErrorTitle, msg: data.message, buttons: Ext.Msg.OK, icon: Ext.Msg.ERROR });
                        }
                    }
                });
            }
        },
        syncselect: function (me, selection) {
            var picker = me.getPicker(),
                separator = '/',
                root;

            Ext.Ajax.request({
                url: '/Component/GetEmployeePath',
                params: { nodes: selection },
                success: function (response, options) {
                    var data = Ext.decode(response.responseText, true);
                    if (data.success && picker) {
                        root = picker.getRootNode();
                        Ext.Array.each(data.data, function (item, index, all) {
                            item = Ext.Array.from(item);

                            var path = Ext.String.format("{0}{1}{0}{2}", separator, root.getId(), item.join(separator));
                            picker.expandPath(path);
                        });
                    }
                }
            });
        }
    },
    store: Ext.create('Ext.data.TreeStore', {
        root: {
            id: 'root',
            text: 'Root',
            root: true
        },
        proxy: {
            type: 'ajax',
            url: '/Component/GetEmployees',
            reader: {
                type: 'json',
                successProperty: 'success',
                messageProperty: 'message',
                totalProperty: 'total',
                root: 'data'
            }
        }
    })
});