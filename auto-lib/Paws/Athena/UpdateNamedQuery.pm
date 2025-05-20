
package Paws::Athena::UpdateNamedQuery;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NamedQueryId => (is => 'ro', isa => 'Str', required => 1);
  has QueryString => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNamedQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::UpdateNamedQueryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::UpdateNamedQuery - Arguments for method UpdateNamedQuery on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNamedQuery on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method UpdateNamedQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNamedQuery.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $UpdateNamedQueryOutput = $athena->UpdateNamedQuery(
      Name         => 'MyNameString',
      NamedQueryId => 'MyNamedQueryId',
      QueryString  => 'MyQueryString',
      Description  => 'MyNamedQueryDescriptionString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/UpdateNamedQuery>

=head1 ATTRIBUTES


=head2 Description => Str

The query description.



=head2 B<REQUIRED> Name => Str

The name of the query.



=head2 B<REQUIRED> NamedQueryId => Str

The unique identifier (UUID) of the query.



=head2 B<REQUIRED> QueryString => Str

The contents of the query with all query statements.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNamedQuery in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

