.class public Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;
.super Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;
.source "GoogleLensMode.java"


# static fields
.field public static final MODE_NAME:Ljava/lang/String; = "GOOGLE_LENS"


# instance fields
.field private mAvailable:[Z

.field private mGoogleLensPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mAvailable:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Landroid/content/Context;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Z
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->getCachedGoogleLensAvailability()Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;[Z)[Z
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mAvailable:[Z

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;Z)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->updateCachedGoogleLensAvailability(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mStateChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mStateChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    return-object p0
.end method

.method private getCachedGoogleLensAvailability()Z
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mGoogleLensPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    if-nez v0, :cond_f

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mContext:Landroid/content/Context;

    const-string v2, "google-lens"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mGoogleLensPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 116
    :cond_f
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mGoogleLensPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v0, 0x0

    const-string v1, "GOOGLE_LENS_AVAILABLE"

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isLensMode(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Z
    .registers 3

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GOOGLE_LENS"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->generateId(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private updateCachedGoogleLensAvailability(Z)V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mGoogleLensPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    if-nez v0, :cond_f

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mContext:Landroid/content/Context;

    const-string v2, "google-lens"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mGoogleLensPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 100
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mGoogleLensPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v1, 0x0

    const-string v2, "GOOGLE_LENS_AVAILABLE"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeBoolean(Ljava/lang/String;ZZ)V

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mGoogleLensPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method


# virtual methods
.method protected generateSmallIconMappingName()Ljava/lang/String;
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->generateSmallIconMappingName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "GOOGLE_LENS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->isAvailable(Z)Z

    move-result p0

    return p0
.end method

.method public isAvailable(Z)Z
    .registers 3

    if-nez p1, :cond_a

    .line 47
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->mAvailable:[Z

    if-eqz p1, :cond_a

    const/4 p0, 0x0

    .line 49
    aget-boolean p0, p1, p0

    return p0

    .line 57
    :cond_a
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->getCachedGoogleLensAvailability()Z

    move-result p0

    return p0
.end method
