.class final Landroid/support/v7/preference/CollapsiblePreferenceGroupController;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasExpandablePreference:Z

.field final mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroupAdapter;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 42
    iput-object p2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    .line 43
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createExpandButton(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)",
            "Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;"
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;

    iget-object v1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 144
    new-instance p2, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;

    invoke-direct {p2, p0, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;-><init>(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method private createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 60
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v0

    .line 61
    :goto_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    move v5, v0

    :goto_1e
    if-ge v0, v4, :cond_83

    .line 66
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 68
    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v7

    if-nez v7, :cond_2b

    goto :goto_80

    :cond_2b
    if-eqz v1, :cond_38

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v7

    if-ge v5, v7, :cond_34

    goto :goto_38

    .line 76
    :cond_34
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 74
    :cond_38
    :goto_38
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_3b
    instance-of v7, v6, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v7, :cond_42

    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    .line 85
    :cond_42
    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    .line 86
    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v7

    if-nez v7, :cond_4b

    goto :goto_80

    .line 91
    :cond_4b
    invoke-direct {p0, v6}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v6

    if-eqz v1, :cond_5d

    .line 92
    iget-boolean v7, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-eqz v7, :cond_5d

    .line 93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Nested expand buttons are not supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_5d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_61
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_7a

    .line 98
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v8

    if-ge v5, v8, :cond_76

    goto :goto_7a

    .line 101
    :cond_76
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 99
    :cond_7a
    :goto_7a
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_80
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_83
    if-eqz v1, :cond_92

    .line 110
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v0

    if-le v5, v0, :cond_92

    .line 111
    invoke-direct {p0, p1, v3}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createExpandButton(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;

    move-result-object p1

    .line 112
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_92
    iget-boolean p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    return-object v2
.end method


# virtual methods
.method public createVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    .line 125
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    .line 134
    :cond_b
    :goto_b
    iget-object p0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method
