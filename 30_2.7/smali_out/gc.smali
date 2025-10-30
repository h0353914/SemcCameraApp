.class public Lgc;
.super Lcy;
.source "PG"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcs;
    .registers 2

    .line 2
    new-instance v0, Lgd;

    .line 3
    invoke-direct {v0}, Lgd;-><init>()V

    return-object v0
.end method
