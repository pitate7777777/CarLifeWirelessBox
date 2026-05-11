.class public Le/c/a/a/v/g$c;
.super Le/c/a/a/v/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/a/v/g;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic H:I

.field public final synthetic I:Le/c/a/a/v/g;


# direct methods
.method public constructor <init>(Le/c/a/a/v/g;Landroid/content/Context;IZI)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/v/g$c;->I:Le/c/a/a/v/g;

    iput p5, p0, Le/c/a/a/v/g$c;->H:I

    invoke-direct {p0, p2, p3, p4}, Le/c/a/a/v/y;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public Y0(Landroidx/recyclerview/widget/RecyclerView$x;[I)V
    .locals 2

    iget p1, p0, Le/c/a/a/v/g$c;->H:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Le/c/a/a/v/g$c;->I:Le/c/a/a/v/g;

    .line 1
    iget-object p1, p1, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Le/c/a/a/v/g$c;->I:Le/c/a/a/v/g;

    .line 3
    iget-object p1, p1, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/c/a/a/v/g$c;->I:Le/c/a/a/v/g;

    .line 5
    iget-object p1, p1, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Le/c/a/a/v/g$c;->I:Le/c/a/a/v/g;

    .line 7
    iget-object p1, p1, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v0

    :goto_0
    return-void
.end method
