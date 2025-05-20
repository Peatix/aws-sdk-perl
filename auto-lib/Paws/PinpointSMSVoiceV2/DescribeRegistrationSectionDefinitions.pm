
package Paws::PinpointSMSVoiceV2::DescribeRegistrationSectionDefinitions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationType => (is => 'ro', isa => 'Str', required => 1);
  has SectionPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegistrationSectionDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DescribeRegistrationSectionDefinitionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeRegistrationSectionDefinitions - Arguments for method DescribeRegistrationSectionDefinitions on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegistrationSectionDefinitions on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DescribeRegistrationSectionDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegistrationSectionDefinitions.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DescribeRegistrationSectionDefinitionsResult =
      $sms -voice->DescribeRegistrationSectionDefinitions(
      RegistrationType => 'MyRegistrationType',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyNextToken',          # OPTIONAL
      SectionPaths     => [
        'MySectionPath', ...                      # min: 1, max: 100
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeRegistrationSectionDefinitionsResult->NextToken;
    my $RegistrationSectionDefinitions =
      $DescribeRegistrationSectionDefinitionsResult
      ->RegistrationSectionDefinitions;
    my $RegistrationType =
      $DescribeRegistrationSectionDefinitionsResult->RegistrationType;

# Returns a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationSectionDefinitionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DescribeRegistrationSectionDefinitions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 B<REQUIRED> RegistrationType => Str

The type of registration form. The list of B<RegistrationTypes> can be
found using the DescribeRegistrationTypeDefinitions action.



=head2 SectionPaths => ArrayRef[Str|Undef]

An array of paths for the registration form section.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegistrationSectionDefinitions in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

