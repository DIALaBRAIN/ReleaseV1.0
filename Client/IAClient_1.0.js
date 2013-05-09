function _iac_openWindow(url, targetWindowId, clientCallback) {
    var oWnd = radopen(url, targetWindowId);
    oWnd.__iacCallback = clientCallback;
    oWnd._titleIconElement.style.background = "transparent url('/images/db-16x16.png')" ;
    return oWnd;
}


function _iac_windowClosed(oWnd, args) {
    if (oWnd.__iacCallback != null) {
        oWnd.__iacCallback(oWnd, args);
    }
}

function _iac_pfrOnCmd(cmdName, arg, clientFn) {
    var clientArgs = _iac_pfrCreateClientArgs(cmdName, "COMMAND", arg);

    if (clientFn != null) {
        clientFn(clientArgs);
    }

    return clientArgs.Handled;
}

function _iac_pfrOnDialogCmd(cmdName, dialogType, customPath, arg, dialogMode, width, height, clientFn, clientCallback, targetWindowId, disableClose) {
    var clientArgs = _iac_pfrCreateClientArgs(cmdName, "DIALOG", arg);
    clientArgs.DialogType = dialogType;
    clientArgs.CustomPath = customPath;
    clientArgs.DialogMode = dialogMode;

    if (clientFn != null) {
        clientFn(clientArgs);
    }

    if (!clientArgs.Handled) {
        clientArgs.Handled = true;
        _iac_openDialog(clientArgs.DialogType, clientArgs.CustomPath, clientArgs.Argument, clientArgs.DialogMode, width, height, targetWindowId, clientCallback, disableClose);

    }

    return clientArgs.Handled;
}

function _iac_pfrCreateClientArgs(cmdName, type, arg) {
    var result = new Object();
    result.CommandName = cmdName;
    result.Type = type;
    result.Argument = arg;
    result.Handled = false;

    return result;
}

function _iac_openDialog(dialogType, customPath, arg, mode, width, height, targetWindowId, clientCallback, disableClose) {
    
    var oWnd = null;
    var url;

   // alert(targetWindowId);

    if (targetWindowId == "I355DCF93552B4F45B1093F0587B8D045" && dialogType == "Password") {
        var val = validateform();

        if (val == false) {
            return;
        }
    }
    switch (dialogType) {
        case "Custom":
            url = customPath + "?";
            break;

        default:
            url = "/DialogWindows/" + dialogType + ".aspx?";
            break;        
    }

    url += "arg=";
    if (arg != null)
        url += arg;

    url += "&mode=";

    if (mode != null)
        url += mode;

    oWnd = _iac_openWindow(url, targetWindowId, clientCallback);

    // -- Set On Client Close --
    if (clientCallback != null) {
        oWnd.add_close(clientCallback);
    }

    if (oWnd != null) {
        if (width != null && width > 0)
            oWnd.set_width(width);

        if (height != null && height > 0)
            oWnd.set_height(height);
        if (disableClose) {
            oWnd.set_behaviors(Telerik.Web.UI.WindowBehaviors.Move + Telerik.Web.UI.WindowBehaviors.Resize);
            //oWnd.set_behaviors(Telerik.Web.UI.WindowBehaviors.Move + Telerik.Web.UI.WindowBehaviors.Minimize + Telerik.Web.UI.WindowBehaviors.Resize);
        }
        else {
            //oWnd.set_behaviors(Telerik.Web.UI.WindowBehaviors.Move + Telerik.Web.UI.WindowBehaviors.Resize);
            oWnd.set_behaviors(Telerik.Web.UI.WindowBehaviors.Move + Telerik.Web.UI.WindowBehaviors.Minimize + Telerik.Web.UI.WindowBehaviors.Close + Telerik.Web.UI.WindowBehaviors.Resize);
        }
        oWnd.center();
    }
    else {
        alert("Error: Could not resolve dialog window.");
    }
}

function _iac_createDialogOptions() {
    var o = new Object();
    o.Width = null;
    i.Height = null;

    return o;
}

function GetRadWindow() {
    return _iac_getRadWindow();
}

function _iac_getRadWindow() {
    var oWindow = null;
    if (window.radWindow) oWindow = window.radWindow;
    else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
    return oWindow;
}

function _iac_resizeWindow(width, height, centreWindow) {
    var oWnd = _iac_getRadWindow();
    if (oWnd != null) {
        if (width != null && width > 0)
            oWnd.set_width(width);

        if (height != null && height > 0)
            oWnd.set_height(height);

        if (centreWindow)
            oWnd.center();
    }

    return oWnd;
}

function _iac_returnToParent(doPostback, response, argument) {
    var oArg = new Object();
    oArg.DoPostback = doPostback = doPostback != null ? doPostback : false;
    oArg.ServiceResponse = response != null ? response : "Undefined";
    oArg.Argument = argument != null ? argument : "";

    var oWnd = GetRadWindow();
    oWnd.close(oArg);
}


function _iac_OnProfileFlagCommmand(args) {

    args.Handled = args.Type == 'COMMAND';
    var s = $('a[href*="' + args.CommandName + '$' + args.Argument + '"]');
    s.each(function () { this.href = 'javascript:void(0)'; $(this).addClass('disabledLink'); });
 
    $.ajax({
        url: '/MemberPages/ProviderFlagsHandler.ashx',
        type: 'POST',
        cache: false, data: args, contentType: 'application/json; charset=utf-8', dataType: 'json',
        success: function (data) {

            _iac_OnProfileFlagCommmandComplete(args);
        },
        error: function (data) {
            _iac_OnProfileFlagCommmandComplete(args);
        }
    });


  
}


function _iac_confirmWindow(msg, returnid, clientCallback, width, height) {
    var arg = msg + '$' + returnid;
    _iac_openDialog("ConfirmationBox", null, arg, null, width, height, "I355DCF93552B4F45B1093F0587B8D04", clientCallback, false);
    return true;
}

function _iac_returnConfirmWindow(doPostback, response, argument) {
    return true;
}





