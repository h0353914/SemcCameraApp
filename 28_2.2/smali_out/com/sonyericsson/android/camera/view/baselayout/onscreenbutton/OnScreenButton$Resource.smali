.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;
.super Ljava/lang/Object;
.source "OnScreenButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# static fields
.field public static final NONE:I = -0x1


# instance fields
.field final mBackground:I

.field final mDescription:I

.field final mIcon:I

.field final mIconPortrait:I

.field final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    .line 70
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    .line 71
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mBackground:I

    .line 72
    iput p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    .line 73
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getBackgroundResource()I
    .registers 1

    .line 93
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mBackground:I

    return p0
.end method

.method getDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 97
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mText:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mText:Ljava/lang/String;

    return-object p0

    :cond_c
    const-string p0, ""

    return-object p0

    .line 104
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getIconResource(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 82
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    return p0

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->shouldRotateByView()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 85
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    return p0

    .line 87
    :cond_f
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    return p0
.end method

.method shouldRotateByView()Z
    .registers 2

    .line 77
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
