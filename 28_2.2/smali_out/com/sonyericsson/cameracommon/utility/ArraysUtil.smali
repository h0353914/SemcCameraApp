.class public Lcom/sonyericsson/cameracommon/utility/ArraysUtil;
.super Ljava/lang/Object;
.source "ArraysUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ArraysUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static swap([FII)V
    .registers 5

    .line 24
    aget v0, p0, p2

    .line 25
    aget v1, p0, p1

    aput v1, p0, p2

    .line 26
    aput v0, p0, p1

    return-void
.end method
