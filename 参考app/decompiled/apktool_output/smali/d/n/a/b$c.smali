.class public Ld/n/a/b$c;
.super Ld/m/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/n/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final c:Ld/m/r;


# instance fields
.field public b:Ld/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/i<",
            "Ld/n/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/n/a/b$c$a;

    invoke-direct {v0}, Ld/n/a/b$c$a;-><init>()V

    sput-object v0, Ld/n/a/b$c;->c:Ld/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ld/m/q;-><init>()V

    new-instance v0, Ld/e/i;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Ld/e/i;-><init>(I)V

    .line 2
    iput-object v0, p0, Ld/n/a/b$c;->b:Ld/e/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Ld/n/a/b$c;->b:Ld/e/i;

    invoke-virtual {v0}, Ld/e/i;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Ld/n/a/b$c;->b:Ld/e/i;

    invoke-virtual {v0, v2}, Ld/e/i;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/n/a/b$a;

    .line 1
    throw v1

    .line 2
    :cond_0
    iget-object v0, p0, Ld/n/a/b$c;->b:Ld/e/i;

    .line 3
    iget v3, v0, Ld/e/i;->h:I

    iget-object v4, v0, Ld/e/i;->g:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aput-object v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v2, v0, Ld/e/i;->h:I

    iput-boolean v2, v0, Ld/e/i;->e:Z

    return-void
.end method
