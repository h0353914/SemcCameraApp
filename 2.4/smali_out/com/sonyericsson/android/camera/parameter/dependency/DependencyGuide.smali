.class public Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;
.super Ljava/lang/Object;
.source "DependencyGuide.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->mValues:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-void
.end method


# virtual methods
.method add(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->mValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object v0
.end method
