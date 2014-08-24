**********************
Vagrant for R Tutorial
**********************

環境準備
====================================

如果先前已經使用過 Vagrant，請跳過本步驟。

Linux/Mac
---------

按照官網指示安裝以下程式：

- Vagrant_
- Virtualbox_

完成後在開啟終端機 (Terminal)

Windows
-------

按照官網指示安裝以下程式：

- Vagrant_
- Virtualbox_
- `Git for Windows`_

.. _Vagrant: http://www.vagrantup.com/downloads.html
.. _Virtualbox: https://www.virtualbox.org/wiki/Downloads
.. _Git for Windows: http://msysgit.github.com/

安裝好後，執行「Git Bash」進入命令列模式


完成後，輸入以下指令確認安裝成功。

.. code-block:: bash

    vagrant version
    # Installed Version: 1.6.x
    # Latest Version: 1.6.x


建立本專案用虛擬機
==================

將本 git repo 資料夾下載後，用命令列進入到本資料夾後，執行

.. code-block:: bash

    vagrant up
    # Bringing machine 'default' up with 'virtualbox' provider...
    # ...
    # ==> default: Loading metadata for box 'ubuntu/trusty64'
    #     default: URL: https://vagrantcloud.com/ubuntu/trusty64
    # ==> default: Adding box 'ubuntu/trusty64' (v14.04) for provider: virtualbox
    # ... （會有很多設定與安裝的訊息）
    # [default] Machine booted and ready!
    # [default] Mounting shared folders...
    # [default] -- /vagrant

此時虛擬機已經在背景運行。可以打開 Virtualbox 來確認。

SSH 連線至虛擬機
================

透過 vagrant，port 與 IP 都會被自動記錄。SSH 連線至虛擬機只要以下指令：

.. code-block:: bash

    vagrant ssh
