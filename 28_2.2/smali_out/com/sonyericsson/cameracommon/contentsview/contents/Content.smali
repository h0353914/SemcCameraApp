.class public Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/contents/optionmenu/OptionOperating;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;,
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Content"


# instance fields
.field protected mCountText:Ljava/lang/String;

.field private final mExtraIconId:I

.field protected final mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

.field private final mPlayableIconId:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;II)V
    .registers 4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 134
    iput p2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    .line 135
    iput p3, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    return-void
.end method


# virtual methods
.method public getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    return-object p0
.end method

.method public getCountText()Ljava/lang/String;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mCountText:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraIconResourceId()I
    .registers 1

    .line 164
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    return p0
.end method

.method public getPlayIconResourceId()I
    .registers 1

    .line 168
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    return p0
.end method

.method public isMediaDataVerified()Z
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    return p0
.end method

.method public shouldShowExtraIcon()Z
    .registers 2

    .line 160
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public shouldShowPlayableIcon()Z
    .registers 2

    .line 153
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public viewContent(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
