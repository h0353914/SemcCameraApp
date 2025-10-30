.class public Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;
.super Ljava/lang/Object;
.source "ParamSharedPref.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ParamSharedPref"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    .line 23
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    .line 27
    :try_start_9
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    .line 28
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_d

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    return-void
.end method

.method public getParamFromSP(Ljava/lang/String;F)F
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_b

    .line 66
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0

    :cond_b
    return p2
.end method

.method public getParamFromSP(Ljava/lang/String;I)I
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_b

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_b

    .line 81
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p2
.end method

.method public getParamFromSP(Ljava/lang/String;Z)Z
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_b

    .line 51
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_b
    return p2
.end method

.method public setParamToSP(Ljava/lang/String;F)V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;I)V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;Z)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e
    return-void
.end method
