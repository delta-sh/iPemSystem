--��������������������������������������������������������������������������������������������������������������������������������������
--����[dbo].[U_Menus]
DELETE FROM [dbo].[U_Menus];
GO

INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(1, N'ϵͳ����', '/content/themes/icons/menu-xtgl.png', NULL, N'ϵͳ����', 1, 0, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2, N'���ù���', '/content/themes/icons/menu-pzgl.png', NULL, N'���ù���', 2, 0, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(3, N'�������', '/content/themes/icons/menu-xnjm.png', NULL, N'�������', 3, 0, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(4, N'ϵͳ����', '/content/themes/icons/menu-report.png', NULL, N'ϵͳ����', 4, 0, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(5, N'ϵͳָ��', '/content/themes/icons/menu-kpi.png', NULL, N'ϵͳָ��', 5, 0, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(1001, N'��ɫ����', '/content/themes/icons/menu-jsgl.png', '/Account/Roles', N'��ɫ��ָϵͳ���Ȩ�޵ļ����飬ʹ�ý�ɫ���Լ�Ȩ�޹�����ʵ���û�Ȩ�޵�ͳһ�����������ɫ������Ҫʵ���˽�ɫ��Ϣ���������༭��ɾ������ɫȨ�޷���ȹ��ܡ�', 1, 1, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(1002, N'�û�����', '/content/themes/icons/menu-yhgl.png', '/Account/Users', N'�û���ָ��¼ϵͳ������˺�������Ϣ���û�����������ĳ����ɫ���̳иý�ɫ��ӵ�е�ϵͳȨ�ޡ��û�������Ҫʵ�����û���Ϣ���������༭��ɾ�����������õȹ��ܡ�', 2, 1, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(1003, N'��־����', '/content/themes/icons/menu-rzgl.png', '/Account/Events', N'��־�����Ƕ�ϵͳ�м�¼��ϵͳ�쳣�������¼�����־��Ϣ���й���ά�����û����Բ�ѯ������ϵͳ��־��¼������ɾ�����ڵ���־��¼�Ȳ�����', 3, 1, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(1004, N'��Ϣ����', '/content/themes/icons/menu-xxgl.png', '/Account/Notice', N'��Ϣ�����Ƕ�վ�ڵĹ�����Ϣ�����桢֪ͨ����ʾ����Ϣ���з����������û����Բ�ѯ�����������¡�ɾ��վ�ڵĹ㲥��Ϣ��', 4, 1, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(1005, N'��������', '/content/themes/icons/menu-csgl.png', '/Account/Dictionary', N'���������Ƕ�ϵͳ��������ĸ���������й���ά�����û��ɸ���ϵͳʵ�ʵ�ҵ���߼����������ʺϵĲ�����<br/>�ܺĹ�ʽ˵��:<br/>1. ��ʽ���ԡ�@�豸����>>�ź����ơ�����ʽӳ��һ�������豸���źŵ㡣<br/>2. �豸���ź������н�ֹ���֡�@������>>������+������-������*������/������(������)���ȷ��š�<br/>��ʽʾ��: ((@�豸1>>�ź�1 + @�豸2>>�ź�2 - @�豸3>>�ź�3) * @�豸4>>�ź�4) / @�豸5>>�ź�5', 5, 1, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2001, N'FSU��Ϣ����', '/content/themes/icons/menu-fsucx.png', '/Fsu/Index', N'FSU��Ϣ��ѯ��ָ��ϵͳ�ڷ��ϲ�ѯ������FSU���в�ѯչ�֣��ṩFSU�ı��롢IP���˿ڡ��Ƿ����ߡ�����ʱ��������Ϣ��', 1, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2002, N'FSU���ù���', '/content/themes/icons/menu-fsupz.png', '/Fsu/Configuration', N'FSU���߹�����ָ��ϵͳ�ڷ��ϲ�ѯ������FSU�����������ù������ṩ�޸ĵ����������޸Ķ��FSU������õ�������', 2, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2003, N'FSU��־����', '/content/themes/icons/menu-fsuftp.png', '/Fsu/Event', N'FSU��־��ָSC��FSU�е�FTP�ļ����ء���������������־��¼��FSU��־�����ṩ��FTP��־��¼��ɸѡ����ѯ�������ȹ��ܡ�', 3, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2004, N'��������Ѳ��', '/content/themes/icons/menu-csgl.png', '/Fsu/ParamDiff', N'��������Ѳ����ָϵͳ���Զ��Զ�����������Ѳ�죬������ʷ���ݴ洢���ڡ��澯�źŵ�����ֵ���ź��Ƿ����εȣ�����Ѳ��������ʾ�������Ĳ������ã�������ά����Ա�˶Ժ�������<br/>Ѳ������ʽ����ǰֵ&��׼ֵ', 4, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2005, N'�澯ά������', '/content/themes/icons/menu-gjgl.png', '/Maintenance/Index', N'�澯ά������', 6, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2006, N'������Ϣ����', '/content/themes/icons/menu-gcgl.png', '/Project/Index', N'������Ϣ�����Ƕ�ϵͳ���漰�Ĺ�����Ŀ����ά�������������ƺ����ı���ͳ�ƹ��ܡ�ע���򹤳�ԤԼ��Ҫ���ù�����Ϣ��Ϊ�˱�֤����ԤԼ��Ϣ�������ԣ��ݲ��ṩɾ�����̹��ܡ�', 8, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2007, N'����ԤԼ����', '/content/themes/icons/menu-gcyy.png', '/Project/Reservation', N'����ԤԼ�����Ƕ�ʩ����������Ӱ�쵽������վ�㡢�������豸�Ƚ�����ǰԤԼ��ϵͳ�����ԤԼ��Ϣ��������ĸ澯��ʶΪ���̸澯��Ϊ��������ͳ���ṩ����֧�֡�ע����澯��Ϣ��Ҫ���ù���ԤԼ��Ϣ��Ϊ�˱�֤�澯��Ϣ�������ԣ��ݲ��ṩɾ��ԤԼ���ܡ�', 9, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2008, N'�澯���ι���', '/content/themes/icons/menu-gjpb.png', '/Maintenance/Masking', N'�澯���ι���', 7, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(2009, N'�źŲ�������', '/content/themes/icons/menu-csgl.png', '/Maintenance/PointParam', N'�źŲ�������', 5, 2, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(3001, N'ͼ����̬', '/content/themes/icons/menu-txzt.png', '/Configuration/Index', N'ͼ����̬�ṩ�˸�����������������ֱ�۵�ͼ�η�ʽչʾϵͳ���豸����������ͼ�Լ��豸�źŵ�ʵʱ��ֵ��', 1, 3, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(3002, N'���ӵ�ͼ', '/content/themes/icons/menu-dzdt.png', '/Configuration/Map', N'���ӵ�ͼ�ṩ��ϵͳ�и�վ��ĵ���λ�á�·��ָ����վ��ſ���ʵʱ�澯����Ϣ�ĸ������ܡ�<br/>ע����ʹ�õ��ӵ�ͼ֮ǰ����Ϊվ�����þ�γ����Ϣ��', 2, 3, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(4001, N'��������', '/content/themes/icons/menu-report-jc.png', NULL, N'��������', 1, 4, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(4002, N'��ʷ����', '/content/themes/icons/menu-report-ls.png', NULL, N'��ʷ����', 2, 4, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(4003, N'ͼ�α���', '/content/themes/icons/menu-report-qx.png', NULL, N'ͼ�α���', 3, 4, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(4004, N'���Ʊ���', '/content/themes/icons/menu-report-dz.png', NULL, N'���Ʊ���', 4, 4, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(5001, N'������ָ��(����վ��)', '/content/themes/icons/menu-kpi-jkd.png', NULL, N'������ָ��(����վ��)', 1, 5, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(5002, N'������ָ��(����վ��)', '/content/themes/icons/menu-kpi-jkd.png', NULL, N'������ָ��(����վ��)', 2, 5, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(5003, N'�ܺ�ָ��', '/content/themes/icons/menu-kpi-nh.png', NULL, N'�ܺ�ָ��', 3, 5, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(5004, N'����ָ��', '/content/themes/icons/menu-kpi-dz.png', NULL, N'����ָ��', 4, 5, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400101, N'����ͳ��', '/content/themes/icons/menu-report-jc.png', '/Report/Base', N'����ͳ����ָ��ϵͳ�����������������ͽ��з���ͳ�ơ��Աȷ�����', 1, 4001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400102, N'վ��ͳ��', '/content/themes/icons/menu-report-jc.png', '/Report/Base', N'վ��ͳ����ָ��ϵͳ����վ�㰴��վ�����ͽ��з���ͳ�ơ��Աȷ�����', 2, 4001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400103, N'����ͳ��', '/content/themes/icons/menu-report-jc.png', '/Report/Base', N'����ͳ����ָ��ϵͳ���л������ջ������ͽ��з���ͳ�ơ��Աȷ�����', 3, 4001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400104, N'�豸ͳ��', '/content/themes/icons/menu-report-jc.png', '/Report/Base', N'�豸ͳ����ָ��ϵͳ�����豸�����豸���ͽ��з���ͳ�ơ��Աȷ�����', 4, 4001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400105, N'Ա��ͳ��', '/content/themes/icons/menu-report-jc.png', '/Report/Base', N'Ա��ͳ����ָ��ϵͳ��������ʽԱ���Ļ�����Ϣ���Ž������Ϣ���ֿ��������Ȩ�豸�ȣ�����ͳ�ơ�������', 5, 4001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400106, N'��Эͳ��', '/content/themes/icons/menu-report-jc.png', '/Report/Base', N'Ա��ͳ����ָ��ϵͳ��������Э��Ա�Ļ�����Ϣ���Ž������Ϣ���ֿ��������Ȩ�豸�ȣ�����ͳ�ơ�������', 6, 4001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400201, N'��ʷ��ֵ��ԃ', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'��ʷ��ֵ��ԃ�ṩ��ϵͳ�����豸�źŵ��������ʷ���ݵĲ�ѯͳ�ơ����ݵ����ȹ��ܡ�', 1, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400202, N'��ʷ�澯��ԃ', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'��ʷ�澯��ԃ�ṩ��ϵͳ�����豸�źŵ��������ʷ�澯�Ĳ�ѯͳ�ơ��Աȷ��������ݵ����ȹ��ܡ�', 2, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400203, N'�澯����ͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'�澯����ͳ���ṩ��ϵͳ�����豸�źŵ��������ʷ�澯�ķ���ͳ�ơ��Աȷ��������ݵ����ȹ��ܡ�', 3, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400204, N'�豸�澯ͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'�豸�澯ͳ���ṩ��ϵͳ�����豸�źŵ��������ʷ�澯�ķ���ͳ�ơ��Աȷ��������ݵ����ȹ��ܡ�', 4, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400205, N'������Ŀͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'������Ŀͳ���ṩ��ϵͳ�����й�����Ŀ�Ĳ�ѯͳ�ơ����ݵ����ȹ��ܡ�', 5, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400206, N'����ԤԼͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'����ԤԼͳ���ṩ��ϵͳ�����й���ԤԼ�Ĳ�ѯͳ�ơ����ݵ����ȹ��ܡ�', 6, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400207, N'�е�ͣ��ͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'�е�ͣ��ͳ���ṩ��ϵͳ�������е�ͣ��վ��Ĳ�ѯͳ�ơ����ݵ����ȹ��ܡ�<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�е�ͣ��"��Ĳ�����Ϣ��', 7, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400208, N'�ͻ�����ͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'�ͻ�����ͳ���ṩ��ϵͳ�������ͻ�����վ��Ĳ�ѯͳ�ơ����ݵ����ȹ��ܡ�<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�ͻ�����"��Ĳ�����Ϣ��', 8, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400209, N'ˢ����¼ͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'ˢ����¼ͳ���ṩ��ϵͳ��������ʽԱ������Э��Ա��ˢ����¼�Ĳ�ѯͳ�ơ����ݵ����ȹ��ܡ�', 9, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400210, N'ˢ������ͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'ˢ����¼ͳ���ṩ��ϵͳ��������ʽԱ������Э��Ա��ˢ�������Ĳ�ѯͳ�ơ����ݵ����ȹ��ܡ�', 10, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400211, N'�ŵ����ͳ��', '/content/themes/icons/menu-report-ls.png', '/Report/History', N'�ŵ����ͳ���ṩ��ϵͳ���������صķŵ�������ŵ���̡��ŵ����ߵĲ�ѯͳ�ơ����ݵ����ȹ��ܡ�', 11, 4002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400301, N'�źŲ�ֵ����', '/content/themes/icons/menu-report-qx.png', '/Report/Chart', N'�źŲ�ֵ������ָ������ͼ�εķ�ʽչʾϵͳ���豸�źŲ�������ʷ���ݡ�', 1, 4003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400302, N'�ź�ͳ������', '/content/themes/icons/menu-report-qx.png', '/Report/Chart', N'�ź�ͳ��������ָ������ͼ�εķ�ʽչʾϵͳ���豸�źŲ�����ͳ�����ݡ�', 2, 4003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400303, N'��طŵ�����', '/content/themes/icons/menu-report-qx.png', '/Report/Chart', N'��طŵ�������ָ������ͼ�εķ�ʽչʾϵͳ�е�طŵ��������ʷ���ݡ�', 3, 4003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400401, N'��Ƶ�澯', '/content/themes/icons/menu-report-dz.png', '/Report/Custom', N'��Ƶ�澯��ָ����һ��ʱ�䷶Χ�ڣ��澯���������涨�����ĸ澯���в�ѯͳ�ơ��Աȷ�����<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�쳣�澯"��Ĳ�����Ϣ��', 1, 4004, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400402, N'���̸澯', '/content/themes/icons/menu-report-dz.png', '/Report/Custom', N'���̸澯��ָ����һ��ʱ�䷶Χ�ڣ��澯��ʱС�ڹ涨ʱ���ĸ澯���в�ѯͳ�ơ��Աȷ�����<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�쳣�澯"��Ĳ�����Ϣ��', 2, 4004, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(400403, N'�����澯', '/content/themes/icons/menu-report-dz.png', '/Report/Custom', N'�����澯��ָ����һ��ʱ�䷶Χ�ڣ��澯��ʱ���ڹ涨ʱ���ĸ澯���в�ѯͳ�ơ��Աȷ�����<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�쳣�澯"��Ĳ�����Ϣ��', 3, 4004, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500101, N'ֱ��ϵͳ���ö�', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'ֱ��ϵͳ���ö� = {1 - ���ص�Դ�������ܵ�ѹ�͸澯ʱ�� / (���ص�Դ�������� �� ͳ��ʱ��)} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>ֱ��ϵͳ���ö�(����վ��)"��Ĳ�����Ϣ��', 1, 5001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500102, N'���������ϵͳ���ö�', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'���������ϵͳ���ö� = {1 - (UPS�������ܵ�ѹ�͸澯ʱ�� + UPS��·����ʱ��) / (UPS�������� �� ͳ��ʱ��)} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>���������ϵͳ���ö�(����վ��)"��Ĳ�����Ϣ��', 2, 5001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500103, N'�¿�ϵͳ���ö�', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'�¿�ϵͳ���ö� = {1 - ���¸澯ʱ�� / (�¶Ȳ������ �� ͳ��ʱ��)} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�¿�ϵͳ���ö�(����վ��)"��Ĳ�����Ϣ��', 3, 5001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500104, N'��ؿ��ö�', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'��ؿ��ö� = {1 - �ɼ��豸�жϸ澯ʱ�� / (�ɼ��豸���� �� ͳ��ʱ��)} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>��ؿ��ö�(����վ��)"��Ĳ�����Ϣ��', 4, 5001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500105, N'�е���ö�', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'�е���ö� = {1 - �е�ͣ��澯ʱ�� / (�е�·�� �� ͳ��ʱ��)} �� 100%', 5, 5001, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500201, N'��ظ�����', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'��ظ����� = (���¼��վ������ / ���¼��վ������) �� 100%', 1, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500202, N'�ؼ���ز�������', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'�ؼ���ز������� = (���¼���豸���� / ���µ�Դ�豸����) �� 100%<br/>ע��<br/>1.����豸ָ����"���ص�Դ�ܵ�ѹ"��"�������ܵ�ѹ"�źŵ��豸��<br/>2.��Դ�豸ָ�豸����Ϊ"���ص�Դ"��"������"���豸��<br/>3.��ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�ؼ���ز�������(����վ��)"��Ĳ�����Ϣ��', 2, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500203, N'վ���ʶ��', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'վ���ʶ�� = (���±�ʾվ������ / ����վ������) �� 100%', 3, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500204, N'���ص�Դ���غϸ���', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'���ص�Դ���غϸ��� = ���ص�Դ�����ʺϸ����� / ���ص�Դ������ �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>���ص�Դ���غϸ���(����վ��)"��Ĳ�����Ϣ��', 4, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500205, N'���غ�ʱ���ϸ���', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'���غ�ʱ���ϸ��� = ����ɷŵ��վ���غ�ʱ���ϸ��վ���� / ����ɷŵ��վ���� �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>���غ�ʱ���ϸ���(����վ��)"��Ĳ�����Ϣ��', 5, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500206, N'�¿������ϸ���', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'�¿������ϸ��� = (1 - ���¸澯վ������ / �����¶Ȳ���վ������) �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�¿������ϸ���(����վ��)"��Ĳ�����Ϣ��', 6, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500207, N'ֱ��ϵͳ���ö�', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'ֱ��ϵͳ���ö� = {1 - ���ص�Դһ���µ�澯��ʱ�� / (���ص�Դ���� �� ͳ��ʱ��)} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>ֱ��ϵͳ���ö�(����վ��)"��Ĳ�����Ϣ��', 7, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500208, N'��ع��ϴ�����ʱ��', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'��ع��ϴ�����ʱ�� = {1 - վ��ͨ���жϸ澯��ʱ�� / (ϵͳվ������ �� ͳ��ʱ��)} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>��ع��ϴ�����ʱ��(����վ��)"��Ĳ�����Ϣ��', 8, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500209, N'���غ˶��Էŵ缰ʱ��', '/content/themes/icons/menu-kpi-jkd.png', '/KPI/Base', N'���غ˶��Էŵ缰ʱ�� = ����1Сʱ���Ϸŵ�վ������ / ϵͳվ������ �� 100%', 9, 5002, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500301, N'�ܺķ���ͳ��', '/content/themes/icons/menu-kpi-nh.png', '/KPI/Performance', N'�ܺķ���ͳ����ָ��ͬһͳ�ƶ������ܺķ�����в�ѯͳ�ơ��Աȷ�����', 1, 5003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500302, N'�ܺ����Ʒ���', '/content/themes/icons/menu-kpi-nh.png', '/KPI/Performance', N'�ܺ����Ʒ�����ָ��ͬһͳ�ƶ����ղ�ͬ��ͳ�����ڽ��в�ѯͳ�ơ��Աȷ�����', 2, 5003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500303, N'�ܺ�ַͬͬ��', '/content/themes/icons/menu-kpi-nh.png', '/KPI/Performance', N'�ܺ�ַͬͬ����ָ��ͬһͳ�ƶ����ڵ����ܺĺ�����ͬ�ڵ����ܺĽ��в�ѯͳ�ơ��Աȷ�����', 3, 5003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500304, N'�ܺ�ַͬ����', '/content/themes/icons/menu-kpi-nh.png', '/KPI/Performance', N'�ܺ�ַͬ������ָ��ͬһͳ�ƶ����ڵ����ܺĺ����ڵ����ܺĽ��в�ѯͳ�ơ��Աȷ�����', 4, 5003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500305, N'վ���ܺĶԱ�', '/content/themes/icons/menu-kpi-nh.png', '/KPI/Performance', N'վ���ܺĶԱ���ָ��ѡ�е�����վ������ܺĽ��в�ѯͳ�ơ��Աȷ�����<br/>ע����֧������վ����жԱȷ�����', 5, 5003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500306, N'վ��PUEͳ��', '/content/themes/icons/menu-kpi-nh.png', '/KPI/Performance', N'PUE������վ����ԴЧ�ʵ�ָ�꣬PUE = ���ܺ� / �豸�ܺģ�PUE��һ����ֵ����׼��2��Խ�ӽ�1������ԴЧ��Խ�ߡ�', 6, 5003, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500401, N'ϵͳ�豸�����', '/content/themes/icons/menu-kpi-dz.png', '/KPI/Custom', N'ϵͳ�豸����� = {1���豸�澯��ʱ�� / (�豸���� �� ͳ��ʱ��)} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>ϵͳ�豸�����"��Ĳ�����Ϣ��', 1, 5004, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500402, N'���ϴ�����ʱ��', '/content/themes/icons/menu-kpi-dz.png', '/KPI/Custom', N'���ϴ�����ʱ�� = {1�������涨����ʱ�����豸���ϴ��� / �豸�����ܴ���} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>���ϴ�����ʱ��"��Ĳ�����Ϣ��', 2, 5004, 1);
INSERT INTO [dbo].[U_Menus]([Id],[Name],[Icon],[Url],[Comment],[Index],[LastId],[Enabled]) VALUES(500403, N'�澯ȷ�ϼ�ʱ��', '/content/themes/icons/menu-kpi-dz.png', '/KPI/Custom', N'�澯ȷ�ϼ�ʱ�� = {1�������涨ȷ��ʱ���ĸ澯���� / �澯������} �� 100%<br/>ע����ʹ��֮ǰ����ȷ����������"ϵͳ����>ϵͳ����>��������>�澯ȷ�ϼ�ʱ��"��Ĳ�����Ϣ��', 3, 5004, 1);
GO

--��������������������������������������������������������������������������������������������������������������������������������������
--�����ű�������־
DECLARE @Id VARCHAR(100) = 'P2S_V1_003';
DELETE FROM [dbo].[H_DBScript] WHERE [Id] = @Id;
INSERT INTO [dbo].[H_DBScript]([Id],[Name],[CreateUser],[CreateTime],[ExecuteUser],[ExecuteTime],[Desc]) VALUES(@Id,'�����˵��б�','Steven',GETDATE(),NULL,GETDATE(),'�����źŲ��������˵����澯ά�������˵����澯���ι����˵�');
GO