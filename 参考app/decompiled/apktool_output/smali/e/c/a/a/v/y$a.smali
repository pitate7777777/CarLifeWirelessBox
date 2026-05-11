.class public Le/c/a/a/v/y$a;
.super Ld/q/d/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/a/v/y;->V0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/c/a/a/v/y;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Ld/q/d/o;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public g(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method
