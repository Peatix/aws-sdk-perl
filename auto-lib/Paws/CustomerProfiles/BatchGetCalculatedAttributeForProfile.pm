
package Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfile;
  use Moose;
  has CalculatedAttributeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CalculatedAttributeName', required => 1);
  has ConditionOverrides => (is => 'ro', isa => 'Paws::CustomerProfiles::ConditionOverrides');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has ProfileIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetCalculatedAttributeForProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}/batch-get-for-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfile - Arguments for method BatchGetCalculatedAttributeForProfile on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetCalculatedAttributeForProfile on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method BatchGetCalculatedAttributeForProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetCalculatedAttributeForProfile.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $BatchGetCalculatedAttributeForProfileResponse =
      $profile->BatchGetCalculatedAttributeForProfile(
      CalculatedAttributeName => 'MytypeName',
      DomainName              => 'Myname',
      ProfileIds              => [ 'Myuuid', ... ],
      ConditionOverrides      => {
        Range => {
          Start => 1,         # min: 1, max: 366
          Unit  => 'DAYS',    # values: DAYS
          End   => 1,         # max: 366; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $CalculatedAttributeValues =
      $BatchGetCalculatedAttributeForProfileResponse->CalculatedAttributeValues;
    my $ConditionOverrides =
      $BatchGetCalculatedAttributeForProfileResponse->ConditionOverrides;
    my $Errors = $BatchGetCalculatedAttributeForProfileResponse->Errors;

# Returns a L<Paws::CustomerProfiles::BatchGetCalculatedAttributeForProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/BatchGetCalculatedAttributeForProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatedAttributeName => Str

The unique name of the calculated attribute.



=head2 ConditionOverrides => L<Paws::CustomerProfiles::ConditionOverrides>

Overrides the condition block within the original calculated attribute
definition.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> ProfileIds => ArrayRef[Str|Undef]

List of unique identifiers for customer profiles to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetCalculatedAttributeForProfile in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

