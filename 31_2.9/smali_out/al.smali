.class public final Lal;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/List;

.field private static final h:Lbi;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/List;

.field public f:Lbi;

.field public g:Z

.field private final i:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "com.google.android.googlequicksearchbox.GsaPublicContentProvider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "content://%s/publicvalue/lens_oem_availability"

    .line 1
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lal;->a:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "com.google.android.googlequicksearchbox.GsaPublicContentProvider"

    aput-object v2, v1, v3

    const-string v2, "content://%s/publicvalue/ar_stickers_availability"

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lal;->b:Ljava/lang/String;

    const-string v4, "Pixel"

    const-string v5, "Pixel XL"

    const-string v6, "walleye"

    const-string v7, "Pixel 2"

    const-string v8, "taimen"

    const-string v9, "Pixel 2 XL"

    const-string v10, "blueline"

    const-string v11, "Pixel 3"

    const-string v12, "crosshatch"

    const-string v13, "Pixel 3 XL"

    const-string v14, "bonito"

    const-string v15, "Pixel 3a XL"

    const-string v16, "sargo"

    const-string v17, "Pixel 3a"

    const-string v18, "flame"

    const-string v19, "Pixel 4"

    const-string v20, "coral"

    const-string v21, "Pixel 4 XL"

    const-string v22, "Pixel 4a"

    const-string v23, "sunfish"

    filled-new-array/range {v4 .. v23}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lal;->c:Ljava/util/List;

    .line 5
    sget-object v1, Lbi;->f:Lbi;

    .line 6
    invoke-virtual {v1}, Lde;->e()Lda;

    move-result-object v1

    check-cast v1, Lbf;

    iget-boolean v2, v1, Lda;->c:Z

    if-nez v2, :cond_61

    goto :goto_66

    .line 7
    :cond_61
    invoke-virtual {v1}, Lda;->b()V

    iput-boolean v3, v1, Lda;->c:Z

    .line 6
    :goto_66
    iget-object v2, v1, Lbf;->b:Lde;

    .line 8
    check-cast v2, Lbi;

    const-string v4, "1.2.0"

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lbi;->a:I

    or-int/2addr v0, v5

    iput v0, v2, Lbi;->a:I

    iput-object v4, v2, Lbi;->b:Ljava/lang/String;

    .line 10
    iget-object v0, v1, Lbf;->b:Lde;

    .line 11
    check-cast v0, Lbi;

    const-string v2, ""

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v0, Lbi;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Lbi;->a:I

    iput-object v2, v0, Lbi;->c:Ljava/lang/String;

    .line 13
    sget v0, Lbh;->a:I

    iget-boolean v2, v1, Lda;->c:Z

    if-nez v2, :cond_8e

    goto :goto_93

    .line 14
    :cond_8e
    invoke-virtual {v1}, Lda;->b()V

    iput-boolean v3, v1, Lda;->c:Z

    :goto_93
    iget-object v2, v1, Lbf;->b:Lde;

    .line 15
    check-cast v2, Lbi;

    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_ca

    iput v4, v2, Lbi;->d:I

    iget v0, v2, Lbi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lbi;->a:I

    sget v0, Lbh;->a:I

    iget-boolean v2, v1, Lda;->c:Z

    if-nez v2, :cond_ab

    goto :goto_b0

    .line 7
    :cond_ab
    invoke-virtual {v1}, Lda;->b()V

    iput-boolean v3, v1, Lda;->c:Z

    .line 15
    :goto_b0
    iget-object v2, v1, Lbf;->b:Lde;

    .line 16
    check-cast v2, Lbi;

    add-int/lit8 v3, v0, -0x2

    if-eqz v0, :cond_c9

    iput v3, v2, Lbi;->e:I

    iget v0, v2, Lbi;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v2, Lbi;->a:I

    .line 17
    invoke-virtual {v1}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lbi;

    sput-object v0, Lal;->h:Lbi;

    return-void

    .line 16
    :cond_c9
    throw v5

    .line 15
    :cond_ca
    throw v5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lal;->e:Ljava/util/List;

    iput-object p1, p0, Lal;->d:Landroid/content/Context;

    iput-object v0, p0, Lal;->i:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lal;->g:Z

    sget-object v0, Lal;->h:Lbi;

    iput-object v0, p0, Lal;->f:Lbi;

    :try_start_19
    iget-object v0, p0, Lal;->i:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_5f

    .line 31
    :cond_24
    sget-object v1, Lal;->h:Lbi;

    const/4 v2, 0x5

    .line 22
    invoke-virtual {v1, v2}, Lde;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lda;

    .line 23
    invoke-virtual {v2, v1}, Lda;->a(Lde;)V

    .line 24
    check-cast v2, Lbf;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-boolean v1, v2, Lda;->c:Z

    if-nez v1, :cond_39

    goto :goto_3e

    .line 25
    :cond_39
    invoke-virtual {v2}, Lda;->b()V

    iput-boolean p1, v2, Lda;->c:Z

    .line 24
    :goto_3e
    iget-object v1, v2, Lbf;->b:Lde;

    .line 26
    check-cast v1, Lbi;

    sget-object v3, Lbi;->f:Lbi;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Lbi;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lbi;->a:I

    iput-object v0, v1, Lbi;->c:Ljava/lang/String;

    .line 24
    invoke-virtual {v2}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lbi;

    iput-object v0, p0, Lal;->f:Lbi;
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_57} :catch_58

    goto :goto_5f

    :catch_58
    const-string v0, "LensSdkParamsReader"

    const-string v1, "Unable to find agsa package: com.google.android.googlequicksearchbox"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_5f
    new-instance v0, Lak;

    .line 30
    invoke-direct {v0, p0}, Lak;-><init>(Lal;)V

    new-array p1, p1, [Ljava/lang/Void;

    .line 31
    invoke-virtual {v0, p1}, Lak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final a(Lai;)V
    .registers 3

    iget-boolean v0, p0, Lal;->g:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lal;->e:Ljava/util/List;

    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    iget-object v0, p0, Lal;->f:Lbi;

    .line 33
    invoke-interface {p1, v0}, Lai;->a(Lbi;)V

    return-void
.end method

.method public final a()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lal;->i:Landroid/content/pm/PackageManager;

    const-string v2, "com.google.android.googlequicksearchbox"

    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 35
    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_c

    return v0

    :catch_c
    const-string v1, "LensSdkParamsReader"

    const-string v2, "Unable to find agsa package: com.google.android.googlequicksearchbox"

    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
