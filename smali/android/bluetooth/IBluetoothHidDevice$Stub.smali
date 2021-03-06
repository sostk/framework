.class public abstract Landroid/bluetooth/IBluetoothHidDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidDevice"

.field static final TRANSACTION_connect:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_replyReport:I = 0x4

.field static final TRANSACTION_reportError:I = 0x5

.field static final TRANSACTION_sendReport:I = 0x3

.field static final TRANSACTION_unplug:I = 0x6

.field static final TRANSACTION_unregisterApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDevice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothHidDevice"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothHidDevice;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v5

    .local v5, "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result v11

    .local v11, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    .end local v5    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .end local v11    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    goto :goto_0

    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    goto :goto_1

    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    :cond_2
    const/4 v3, 0x0

    .local v3, "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    goto :goto_2

    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :cond_3
    const/4 v4, 0x0

    .local v4, "_arg3":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    goto :goto_3

    .end local v4    # "_arg3":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v5    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .restart local v11    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .end local v5    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .end local v11    # "_result":Z
    :sswitch_2
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    :goto_5
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z

    move-result v11

    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_6

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    .end local v11    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    goto :goto_5

    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .restart local v11    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    .end local v11    # "_result":Z
    :sswitch_3
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, "_arg1":[B
    invoke-virtual {p0, v7, v9}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->sendReport(I[B)Z

    move-result v11

    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_7

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    .end local v7    # "_arg0":I
    .end local v9    # "_arg1":[B
    .end local v11    # "_result":Z
    :sswitch_4
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .local v6, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    .local v8, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "_arg2":[B
    invoke-virtual {p0, v6, v8, v10}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->replyReport(BB[B)Z

    move-result v11

    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_8

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    .end local v6    # "_arg0":B
    .end local v8    # "_arg1":B
    .end local v10    # "_arg2":[B
    .end local v11    # "_result":Z
    :sswitch_5
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .restart local v6    # "_arg0":B
    invoke-virtual {p0, v6}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->reportError(B)Z

    move-result v11

    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_9

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    .end local v6    # "_arg0":B
    .end local v11    # "_result":Z
    :sswitch_6
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unplug()Z

    move-result v11

    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_a

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_a

    .end local v11    # "_result":Z
    :sswitch_7
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->connect()Z

    move-result v11

    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_b

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_b

    .end local v11    # "_result":Z
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->disconnect()Z

    move-result v11

    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_c

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_c

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
