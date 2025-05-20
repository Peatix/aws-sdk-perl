
package Paws::PinpointSMSVoiceV2::DescribeRegistrationVersions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::RegistrationVersionFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);
  has VersionNumbers => (is => 'ro', isa => 'ArrayRef[Int]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegistrationVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DescribeRegistrationVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeRegistrationVersions - Arguments for method DescribeRegistrationVersions on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegistrationVersions on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DescribeRegistrationVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegistrationVersions.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DescribeRegistrationVersionsResult =
      $sms -voice->DescribeRegistrationVersions(
      RegistrationId => 'MyRegistrationIdOrArn',
      Filters        => [
        {
          Name =>
            'registration-version-status', # values: registration-version-status
          Values => [
            'MyFilterValue', ...           # min: 1, max: 128
          ],    # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      VersionNumbers => [
        1, ...                            # min: 1, max: 100000
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken       = $DescribeRegistrationVersionsResult->NextToken;
    my $RegistrationArn = $DescribeRegistrationVersionsResult->RegistrationArn;
    my $RegistrationId  = $DescribeRegistrationVersionsResult->RegistrationId;
    my $RegistrationVersions =
      $DescribeRegistrationVersionsResult->RegistrationVersions;

# Returns a L<Paws::PinpointSMSVoiceV2::DescribeRegistrationVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DescribeRegistrationVersions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationVersionFilter>]

An array of RegistrationVersionFilter objects to filter the results.



=head2 MaxResults => Int

The maximum number of results to return per each request.



=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.



=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.



=head2 VersionNumbers => ArrayRef[Int]

An array of registration version numbers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegistrationVersions in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

