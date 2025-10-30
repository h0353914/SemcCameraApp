.class public final Lcom/sonymobile/getmore/api/ManageContract;
.super Ljava/lang/Object;
.source "ManageContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/getmore/api/ManageContract$Discovered;,
        Lcom/sonymobile/getmore/api/ManageContract$Enabled;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.getmore.manage"

.field public static final PERMISSION:Ljava/lang/String; = "com.sonymobile.getmore.permission.MANAGE"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
