
package Paws::CustomerProfiles::ListCalculatedAttributesForProfile;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCalculatedAttributesForProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/profile/{ProfileId}/calculated-attributes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::ListCalculatedAttributesForProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListCalculatedAttributesForProfile - Arguments for method ListCalculatedAttributesForProfile on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCalculatedAttributesForProfile on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method ListCalculatedAttributesForProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCalculatedAttributesForProfile.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $ListCalculatedAttributesForProfileResponse =
      $profile->ListCalculatedAttributesForProfile(
      DomainName => 'Myname',
      ProfileId  => 'Myuuid',
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'Mytoken',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListCalculatedAttributesForProfileResponse->Items;
    my $NextToken = $ListCalculatedAttributesForProfileResponse->NextToken;

# Returns a L<Paws::CustomerProfiles::ListCalculatedAttributesForProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/ListCalculatedAttributesForProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 MaxResults => Int

The maximum number of calculated attributes returned per page.



=head2 NextToken => Str

The pagination token from the previous call to
ListCalculatedAttributesForProfile.



=head2 B<REQUIRED> ProfileId => Str

The unique identifier of a customer profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCalculatedAttributesForProfile in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

