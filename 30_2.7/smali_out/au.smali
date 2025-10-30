.class final synthetic Lau;
.super Ljava/lang/Object;

# interfaces
.implements Lai;


# instance fields
.field private final a:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau;->a:Lba;

    return-void
.end method


# virtual methods
.method public final a(Lbi;)V
    .registers 6

    iget-object v0, p0, Lau;->a:Lba;

    iget v1, p1, Lbi;->d:I

    .line 1
    invoke-static {v1}, Lbh;->a(I)I

    move-result v1

    if-nez v1, :cond_c

    sget v1, Lbh;->a:I

    :cond_c
    sget v2, Lbh;->b:I

    if-ne v1, v2, :cond_4b

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    .line 2
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x7

    :try_start_1d
    iget-object v2, v0, Lba;->b:Landroid/content/Context;

    const/16 v3, 0x41

    .line 4
    invoke-virtual {v2, p1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_36

    const-string p1, "LensServiceConnImpl"

    const-string v2, "Unable to bind Lens service."

    .line 5
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lbh;->j:I

    iput p1, v0, Lba;->h:I

    .line 6
    invoke-virtual {v0, v1}, Lba;->a(I)V

    return-void

    :cond_36
    const/4 p1, 0x3

    .line 7
    invoke-virtual {v0, p1}, Lba;->a(I)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p1

    const-string v2, "LensServiceConnImpl"

    const-string v3, "Unable to bind Lens service due to security exception."

    .line 8
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget p1, Lbh;->j:I

    iput p1, v0, Lba;->h:I

    .line 9
    invoke-virtual {v0, v1}, Lba;->a(I)V

    return-void

    .line 7
    :cond_4b
    iget p1, p1, Lbi;->d:I

    .line 10
    invoke-static {p1}, Lbh;->a(I)I

    move-result p1

    if-nez p1, :cond_55

    sget p1, Lbh;->a:I

    :cond_55
    iput p1, v0, Lba;->h:I

    const/4 p1, 0x6

    .line 11
    invoke-virtual {v0, p1}, Lba;->a(I)V

    return-void
.end method
