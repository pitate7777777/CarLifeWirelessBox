.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/m/f;


# instance fields
.field public final a:Ld/m/c;


# direct methods
.method public constructor <init>(Ld/m/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Ld/m/c;

    return-void
.end method


# virtual methods
.method public d(Ld/m/h;Ld/m/d$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Ld/m/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Ld/m/c;->a(Ld/m/h;Ld/m/d$a;ZLd/m/l;)V

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Ld/m/c;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Ld/m/c;->a(Ld/m/h;Ld/m/d$a;ZLd/m/l;)V

    return-void
.end method
