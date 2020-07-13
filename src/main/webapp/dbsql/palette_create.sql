--sys�� system �������� �α����ؼ� ����� ����, ���̺����̽� �����ϱ�
--sqlplus "/as sysdba  ==>�ý���dba����

--���̺� �����̽� ����
create tablespace le_palette
datafile 'C:\myoracle\data\le_palette.dbf' size 48m
extent management local
uniform size 64k
segment space management auto;

--����� ���� ����
create user pal
identified by pal123
default tablespace le_palette;

--����� ���Ѻο�
grant connect,resource to pal;
--grant connect, dba to herb with admin option;

--�� ���� ���� �ο��ϱ�
grant create view to pal;