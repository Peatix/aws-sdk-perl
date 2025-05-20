
package Paws::DataZone::DeleteDomain;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has SkipDeletionCheck => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'skipDeletionCheck');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::DeleteDomainOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteDomain - Arguments for method DeleteDomain on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDomain on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method DeleteDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDomain.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $DeleteDomainOutput = $datazone->DeleteDomain(
      Identifier        => 'MyDomainId',
      ClientToken       => 'MyString',     # OPTIONAL
      SkipDeletionCheck => 1,              # OPTIONAL
    );

    # Results:
    my $Status = $DeleteDomainOutput->Status;

    # Returns a L<Paws::DataZone::DeleteDomainOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/DeleteDomain>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> Identifier => Str

The identifier of the Amazon Web Services domain that is to be deleted.



=head2 SkipDeletionCheck => Bool

Specifies the optional flag to delete all child entities within the
domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDomain in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

