
package Paws::CustomerProfiles::GetCalculatedAttributeForProfile;
  use Moose;
  has CalculatedAttributeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CalculatedAttributeName', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCalculatedAttributeForProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/profile/{ProfileId}/calculated-attributes/{CalculatedAttributeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetCalculatedAttributeForProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetCalculatedAttributeForProfile - Arguments for method GetCalculatedAttributeForProfile on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCalculatedAttributeForProfile on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetCalculatedAttributeForProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCalculatedAttributeForProfile.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetCalculatedAttributeForProfileResponse =
      $profile->GetCalculatedAttributeForProfile(
      CalculatedAttributeName => 'MytypeName',
      DomainName              => 'Myname',
      ProfileId               => 'Myuuid',

      );

    # Results:
    my $CalculatedAttributeName =
      $GetCalculatedAttributeForProfileResponse->CalculatedAttributeName;
    my $DisplayName = $GetCalculatedAttributeForProfileResponse->DisplayName;
    my $IsDataPartial =
      $GetCalculatedAttributeForProfileResponse->IsDataPartial;
    my $Value = $GetCalculatedAttributeForProfileResponse->Value;

# Returns a L<Paws::CustomerProfiles::GetCalculatedAttributeForProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetCalculatedAttributeForProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatedAttributeName => Str

The unique name of the calculated attribute.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> ProfileId => Str

The unique identifier of a customer profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCalculatedAttributeForProfile in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

