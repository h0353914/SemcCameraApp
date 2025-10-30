.class public Lcom/google/android/gms/auth/AccountChangeEventsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/AccountChangeEventsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersion:I

.field zzQd:Landroid/accounts/Account;

.field zzRs:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzRu:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->mVersion:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroid/accounts/Account;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->mVersion:I

    iput p2, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzRu:I

    iput-object p3, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzRs:Ljava/lang/String;

    if-nez p4, :cond_1b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1b

    new-instance p1, Landroid/accounts/Account;

    const-string p2, "com.google"

    invoke-direct {p1, p3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzQd:Landroid/accounts/Account;

    return-void

    :cond_1b
    iput-object p4, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzQd:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzQd:Landroid/accounts/Account;

    return-object p0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzRs:Ljava/lang/String;

    return-object p0
.end method

.method public getEventIndex()I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzRu:I

    return p0
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzQd:Landroid/accounts/Account;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzRs:Ljava/lang/String;

    return-object p0
.end method

.method public setEventIndex(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->zzRu:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/zzb;->zza(Lcom/google/android/gms/auth/AccountChangeEventsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
