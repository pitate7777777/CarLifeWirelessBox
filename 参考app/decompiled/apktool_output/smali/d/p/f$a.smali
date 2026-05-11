.class public Ld/p/f$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/p/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/p/f;


# direct methods
.method public constructor <init>(Ld/p/f;)V
    .locals 0

    iput-object p1, p0, Ld/p/f$a;->a:Ld/p/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld/p/f$a;->a:Ld/p/f;

    .line 1
    iget-object v0, p1, Ld/p/f;->a0:Ld/p/j;

    .line 2
    iget-object v0, v0, Ld/p/j;->h:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Ld/p/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v1, Ld/p/g;

    invoke-direct {v1, v0}, Ld/p/g;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 5
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->s()V

    :cond_1
    :goto_0
    return-void
.end method
