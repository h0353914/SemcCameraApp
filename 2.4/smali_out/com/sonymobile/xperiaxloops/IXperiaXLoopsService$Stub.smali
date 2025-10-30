.class public abstract Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;
.super Landroid/os/Binder;
.source "IXperiaXLoopsService.java"

# interfaces
.implements Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

.field static final TRANSACTION_notifyShowLoopsByApps:I = 0x8

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_requestAssistEmphasis:I = 0x4

.field static final TRANSACTION_sendFPAResult:I = 0x6

.field static final TRANSACTION_sendKeyguardStatus:I = 0x5

.field static final TRANSACTION_sendScreenStatus:I = 0x7

.field static final TRANSACTION_setLoopsColorOnLockscreen:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 30
    instance-of v1, v0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService;

    return-object v0

    .line 33
    :cond_13
    new-instance v0, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_c6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_cc

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_f
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 130
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1c

    move p1, v1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 134
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->notifyShowLoopsByApps(ZI)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_28
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 121
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->sendScreenStatus(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_38
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 105
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_50

    .line 110
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 115
    :cond_50
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->sendFPAResult(ILandroid/os/Bundle;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_57
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 96
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->sendKeyguardStatus(I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_67
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 81
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7b

    .line 84
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 89
    :cond_7b
    invoke-virtual {p0, v0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->requestAssistEmphasis(Landroid/os/Bundle;)Z

    move-result p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_86
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 72
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->setLoopsColorOnLockscreen(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_96
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;

    move-result-object p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->unregisterCallback(ILcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_ae
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 50
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsService$Stub;->registerCallback(ILcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_c6
    const-string p1, "com.sonymobile.xperiaxloops.IXperiaXLoopsService"

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_96
        :pswitch_86
        :pswitch_67
        :pswitch_57
        :pswitch_38
        :pswitch_28
        :pswitch_f
    .end packed-switch
.end method
