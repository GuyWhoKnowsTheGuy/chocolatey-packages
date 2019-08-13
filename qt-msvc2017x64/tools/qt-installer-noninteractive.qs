function Controller() {
    installer.autoRejectMessageBoxes();
    installer.installationFinished.connect(function() {
        gui.clickButton(buttons.NextButton);
    })
}

Controller.prototype.WelcomePageCallback = function() {
    // click delay here because the next button is initially disabled for ~1 second
    gui.clickButton(buttons.NextButton, 5000);
}

Controller.prototype.CredentialsPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function()
{
    gui.currentPageWidget().TargetDirectoryLineEdit.setText("C:\\Qt");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
	var page = gui.pageWidgetByObjectName("ComponentSelectionPage");

    // if CategoryGroupBox is visible, check one of the checkboxes
    // and click fetch button before selecting any components
    var groupBox = gui.findChild(page, "CategoryGroupBox");
    if (groupBox) {
        console.log("groupBox found");
        // findChild second argument is the display name of the checkbox
        var checkBox = gui.findChild(page, "Archive");
        if (checkBox) {
            console.log("checkBox found");
            console.log("checkBox name: " + checkBox.text);
            if (checkBox.checked == false) {
                checkBox.click();
                var fetchButton = gui.findChild(page, "FetchCategoryButton");
                if (fetchButton) {
                    console.log("fetchButton found");
                    fetchButton.click();
                } else {
                    console.log("fetchButton NOT found");
                }
            }
        } else {
            console.log("checkBox NOT found");
        }
    } else {
        console.log("groupBox NOT found");
    }
	
    var widget = gui.currentPageWidget();

    widget.deselectAll();

    widget.selectComponent("qt.595.win64_msvc2017_64");

    gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
    gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm;
if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
    checkBoxForm.launchQtCreatorCheckBox.checked = false;
}
    gui.clickButton(buttons.FinishButton);
}