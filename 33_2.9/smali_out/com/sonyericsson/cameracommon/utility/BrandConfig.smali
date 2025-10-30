.class public Lcom/sonyericsson/cameracommon/utility/BrandConfig;
.super Ljava/lang/Object;
.source "BrandConfig.java"


# static fields
.field private static final VERIZON_BRAND:Ljava/lang/String; = "verizon"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVerizonBrand()Z
    .registers 2

    .line 18
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v1, "verizon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
