// Type your code here, or load an example.

#include <iostream>
#include <string>
using namespace std;

void menu(){
    int option, image_select,the_source,lAdjustments,lAdjustmentOptions;
    cout << "\nMENU" << endl;
    cout << "\n\n1.Image \n2.Signal \n3.Settings \n4. Info \n5.Reset \n6. Power Off \n7.Hibernate" << endl;
    cout << "/nEnter Option: ";
    cin >> option;

    if(option == 1){
        cout << "\nIMAGE SETTINGS... " << endl;
        cout << "\n1.select Image \n2.adjust Image\n\n3.BACK\n " << endl;   
        cin >> image_select;
        if(image_select == 1){
            cout << "Selecting Image Please Wait..." << endl;
            cout << "Completed" << endl;
            menu();
        }else if(image_select == 2){
            cout << "Image Adjustment In Progress...\nPlease Wait... "<< endl;
            cout << "Completed" << endl;
            menu();
        }else{
            cout << "Invalid Input" << endl;
            menu();
        }


    }
    else if(option == 2){
        cout << "\nSIGNAL SETTINGS ...\n" << endl;
        cout << "1.HDMI \n2.VGA \n3.USB\n\n4.BACK\n" << endl;    
        cin >> the_source;
        if(the_source == 1){
            cout << "Changing Signal Source To HDMI" << endl;
            cout << "Completed" << endl;
            menu();
        }
        if(the_source == 2){
            cout << "Changing Signal Source To VGA" << endl;
            cout << "Completed" << endl;
            menu();
        }
        if(the_source == 3){
            cout << "Changing Signal Source To USB" << endl;
            cout << "Completed" << endl;
            menu();
        }
        if(the_source == 4){
            menu();
        }
        else{
            cout << "Invalid Input" << endl;
            menu(); 
        }
    }
    else if(option == 3){
        cout << "\nOTHER SETTINGS ...\n" << endl;
        cout << "1.lens adjustment.\n\n2.BACK\n" << endl;
        cin >> lAdjustments;
        if(lAdjustments == 1){
            cout << "ADJUST LENSE OPTIONS" << endl;
            cout << "1.Zoom and Focus \n2.Resolution\n\n3.BACK" << endl;
            cin >> lAdjustmentOptions;
            if(lAdjustmentOptions == 1){
                cout << "ZOOM & FOCUS OPTIONS ..." << endl;
                cout << "Please Wait...\nWe are zooming and focusing the screen." << endl;
                menu();

            }
            else if(lAdjustmentOptions == 2){
                cout << "RESOLUTION OPTIONS ..." << endl;
                cout << "Please Wait ...\nWe are fixing screen resolutions" << endl;
                menu();
            }

        }
    }
    else if(option == 4){
        cout << "\nPROJECTOR INFO ...\n" << endl;
        cout << "ASSMEBLY LANGUAGE PROJECTOR\n 1.0 \n GROUP N\n\n1. BACK\n" << endl;
        int back;
        cin >> back;
        if(back == 1){
            menu();
        }else{
            cout << "Invalid Input" << endl;
            menu();
        }
    }
    else if(option == 5){
        cout << "\nRESET OPTIONS\n" << endl;
        cout << "/nDo you want to reset" << endl;
        cout << "1.Yes \n2.No\n\n" << endl;
        string reset;
        cin >> reset;
        if(reset == "Y" || "y"){
            cout << "Reseting System" << endl;
            exit(0);
        }
        else{
            menu();
        }
    }
    else if(option == 6){
        cout << "/nAre you Sure we want to Power Off." << endl;
        cout << "Y or N\n" << endl;
        string power;
        cin >> power;
        if(power == "Y" || "y" ){
            cout << "Turning Off ..." << endl;
            exit(0);
        }else{
            menu();
        }
    }
    else if(option == 7){
        cout << "/nAre you Sure we want to Hibernate." << endl;
        cout << "Y or N\n" << endl;
        string hiber;
        cin >> hiber;
        if(hiber == "Y" || "y"){
            cout << "Hibernating..." << endl;
            exit(0);
        }
        else{
            menu();
        }
    }
    else {
        cout << "INVALID INPUT" << endl;
        menu();
    }
}

int main() {
    cout << "TURNING ON..." << endl;
    menu();
    return 0;
}



