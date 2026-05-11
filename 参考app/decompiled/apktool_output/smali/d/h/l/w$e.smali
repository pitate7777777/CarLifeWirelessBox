.class public Ld/h/l/w$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ld/h/l/w;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ld/h/l/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/h/l/w;-><init>(Ld/h/l/w;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld/h/l/w$e;->a:Ld/h/l/w;

    return-void
.end method

.method public constructor <init>(Ld/h/l/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/h/l/w$e;->a:Ld/h/l/w;

    return-void
.end method


# virtual methods
.method public abstract a()Ld/h/l/w;
.end method

.method public abstract b(Ld/h/f/b;)V
.end method

.method public abstract c(Ld/h/f/b;)V
.end method
