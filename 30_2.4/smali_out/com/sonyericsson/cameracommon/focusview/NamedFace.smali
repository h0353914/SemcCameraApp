.class public Lcom/sonyericsson/cameracommon/focusview/NamedFace;
.super Ljava/lang/Object;
.source "NamedFace.java"


# instance fields
.field public final mEyePosition:Landroid/graphics/Point;

.field public final mFacePosition:Landroid/graphics/Rect;

.field public mIsAnimalFace:Z

.field public final mName:Ljava/lang/String;

.field public final mSmileScore:I

.field public final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Point;IZ)V
    .registers 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    .line 27
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mEyePosition:Landroid/graphics/Point;

    .line 28
    iput p5, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    .line 29
    iput-boolean p6, p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mIsAnimalFace:Z

    return-void
.end method
