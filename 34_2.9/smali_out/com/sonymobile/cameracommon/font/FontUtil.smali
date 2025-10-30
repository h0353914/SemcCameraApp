.class public Lcom/sonymobile/cameracommon/font/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FontUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;
    .registers 3

    if-eqz p0, :cond_1a

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->-$$Nest$fgetmPath(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 49
    invoke-static {p0}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->-$$Nest$fgetmPath(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method

.method public static setBold(Landroid/widget/Button;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setBold(Landroid/widget/TextView;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setDefault(Landroid/widget/Button;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setDefault(Landroid/widget/TextView;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-nez p1, :cond_6

    goto :goto_11

    .line 71
    :cond_6
    invoke-static {p1}, Lcom/sonymobile/cameracommon/font/FontUtil;->createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    :goto_11
    return v0
.end method

.method public static setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-nez p1, :cond_6

    goto :goto_11

    .line 59
    :cond_6
    invoke-static {p1}, Lcom/sonymobile/cameracommon/font/FontUtil;->createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    :goto_11
    return v0
.end method
