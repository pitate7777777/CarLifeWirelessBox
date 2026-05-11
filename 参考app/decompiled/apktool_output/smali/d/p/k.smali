.class public Ld/p/k;
.super Ld/q/d/x;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Ld/h/l/a;

.field public final h:Ld/h/l/a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Ld/q/d/x;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1
    iget-object v0, p0, Ld/q/d/x;->e:Ld/q/d/x$a;

    .line 2
    iput-object v0, p0, Ld/p/k;->g:Ld/h/l/a;

    new-instance v0, Ld/p/k$a;

    invoke-direct {v0, p0}, Ld/p/k$a;-><init>(Ld/p/k;)V

    iput-object v0, p0, Ld/p/k;->h:Ld/h/l/a;

    iput-object p1, p0, Ld/p/k;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public j()Ld/h/l/a;
    .locals 1

    iget-object v0, p0, Ld/p/k;->h:Ld/h/l/a;

    return-object v0
.end method
