.class public abstract Lcom/android/internal/app/IVoiceInteractorCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractorCallback.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractorCallback"

.field static final TRANSACTION_deliverAbortVoiceResult:I = 0x4

.field static final TRANSACTION_deliverCancel:I = 0x6

.field static final TRANSACTION_deliverCommandResult:I = 0x5

.field static final TRANSACTION_deliverCompleteVoiceResult:I = 0x3

.field static final TRANSACTION_deliverConfirmationResult:I = 0x1

.field static final TRANSACTION_deliverPickOptionResult:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractorCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/app/IVoiceInteractorCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string v6, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string v6, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    .local v0, "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    .local v2, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V

    return v7

    .end local v2    # "_arg1":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Z
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_2
    const-string v6, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .restart local v2    # "_arg1":Z
    :goto_2
    sget-object v6, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .local v4, "_arg2":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_3
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    return v7

    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Z
    goto :goto_2

    .restart local v4    # "_arg2":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_3
    const/4 v5, 0x0

    .local v5, "_arg3":Landroid/os/Bundle;
    goto :goto_3

    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :sswitch_3
    const-string v6, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V

    return v7

    :cond_4
    const/4 v1, 0x0

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_4
    const-string v6, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V

    return v7

    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    const-string v6, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    .restart local v2    # "_arg1":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_7
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V

    return v7

    .end local v2    # "_arg1":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Z
    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_7

    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_6
    const-string v6, "com.android.internal.app.IVoiceInteractorCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V

    return v7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
