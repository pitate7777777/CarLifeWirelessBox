.class public Ld/k/d/m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ld/k/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/k/d/o<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/k/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/k/d/o<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/k/d/m;->a:Ld/k/d/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ld/k/d/m;->a:Ld/k/d/o;

    iget-object v0, v0, Ld/k/d/o;->h:Ld/k/d/r;

    invoke-virtual {v0}, Ld/k/d/r;->V()V

    return-void
.end method
