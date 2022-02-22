	Поместите патченный файл сюда:
/usr/share/cinnamon/applets/grouped-window-list@cinnamon.org/appList.js

	Решение проблемы взято отсюда:
https://github.com/jake-phy/WindowIconList/issues/168

The following code change works for me (i.e. it hides the "JavaEmbeddedFrame" button when using "tvbrowser"):

in /usr/share/cinnamon/applets/grouped-windows-list@cinnamon.org/appList.js, replace:

    shouldWindowBeAdded(metaWindow) {
        return (this.state.settings.showAllWorkspaces
            || metaWindow.is_on_all_workspaces()
            || metaWindow.get_workspace() === this.metaWorkspace)
        && !metaWindow.is_skip_taskbar()
        && (!this.state.settings.listMonitorWindows
            || this.state.monitorWatchList.indexOf(metaWindow.get_monitor()) > -1);
    }

by

    shouldWindowBeAdded(metaWindow) {
        return (this.state.settings.showAllWorkspaces
            || metaWindow.is_on_all_workspaces()
            || metaWindow.get_workspace() === this.metaWorkspace)
        && !metaWindow.is_skip_taskbar()
        && metaWindow.get_title() !== "JavaEmbeddedFrame"
        && (!this.state.settings.listMonitorWindows
            || this.state.monitorWatchList.indexOf(metaWindow.get_monitor()) > -1);
    }

