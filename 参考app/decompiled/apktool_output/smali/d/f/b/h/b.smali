.class public Ld/f/b/h/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ld/f/b/h/d;

.field public b:Ld/f/b/h/d;

.field public c:Ld/f/b/h/d;

.field public d:Ld/f/b/h/d;

.field public e:Ld/f/b/h/d;

.field public f:Ld/f/b/h/d;

.field public g:Ld/f/b/h/d;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/f/b/h/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Ld/f/b/h/d;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/f/b/h/b;->k:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/f/b/h/b;->p:Z

    iput-object p1, p0, Ld/f/b/h/b;->a:Ld/f/b/h/d;

    iput p2, p0, Ld/f/b/h/b;->o:I

    iput-boolean p3, p0, Ld/f/b/h/b;->p:Z

    return-void
.end method
