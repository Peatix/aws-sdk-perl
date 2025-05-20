
package Paws::CustomerProfiles::ListProfileAttributeValues;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AttributeName', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfileAttributeValues');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/profile-attributes/{AttributeName}/values');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::ProfileAttributeValuesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListProfileAttributeValues - Arguments for method ListProfileAttributeValues on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfileAttributeValues on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method ListProfileAttributeValues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfileAttributeValues.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $ProfileAttributeValuesResponse = $profile->ListProfileAttributeValues(
      AttributeName => 'Mystring1To255',
      DomainName    => 'Myname',

    );

    # Results:
    my $AttributeName = $ProfileAttributeValuesResponse->AttributeName;
    my $DomainName    = $ProfileAttributeValuesResponse->DomainName;
    my $Items         = $ProfileAttributeValuesResponse->Items;
    my $StatusCode    = $ProfileAttributeValuesResponse->StatusCode;

   # Returns a L<Paws::CustomerProfiles::ProfileAttributeValuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/ListProfileAttributeValues>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

The attribute name.



=head2 B<REQUIRED> DomainName => Str

The unique identifier of the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfileAttributeValues in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

