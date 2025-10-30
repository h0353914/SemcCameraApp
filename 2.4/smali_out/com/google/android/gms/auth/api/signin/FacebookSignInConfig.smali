.class public Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntent:Landroid/content/Intent;

.field final versionCode:I

.field private final zzSX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;-><init>(ILandroid/content/Intent;Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(ILandroid/content/Intent;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->zzSX:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    check-cast p1, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->zzlS()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->zzlS()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_20} :catch_23

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    :catch_23
    :cond_23
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/zzb;->zza(Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlR()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public zzlS()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
