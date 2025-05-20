
package Paws::MediaTailor::DescribeProgram;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has ProgramName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProgramName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProgram');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{ChannelName}/program/{ProgramName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::DescribeProgramResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DescribeProgram - Arguments for method DescribeProgram on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProgram on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method DescribeProgram.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProgram.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $DescribeProgramResponse = $api . mediatailor->DescribeProgram(
      ChannelName => 'My__string',
      ProgramName => 'My__string',

    );

    # Results:
    my $AdBreaks           = $DescribeProgramResponse->AdBreaks;
    my $Arn                = $DescribeProgramResponse->Arn;
    my $AudienceMedia      = $DescribeProgramResponse->AudienceMedia;
    my $ChannelName        = $DescribeProgramResponse->ChannelName;
    my $ClipRange          = $DescribeProgramResponse->ClipRange;
    my $CreationTime       = $DescribeProgramResponse->CreationTime;
    my $DurationMillis     = $DescribeProgramResponse->DurationMillis;
    my $LiveSourceName     = $DescribeProgramResponse->LiveSourceName;
    my $ProgramName        = $DescribeProgramResponse->ProgramName;
    my $ScheduledStartTime = $DescribeProgramResponse->ScheduledStartTime;
    my $SourceLocationName = $DescribeProgramResponse->SourceLocationName;
    my $VodSourceName      = $DescribeProgramResponse->VodSourceName;

    # Returns a L<Paws::MediaTailor::DescribeProgramResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/DescribeProgram>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The name of the channel associated with this Program.



=head2 B<REQUIRED> ProgramName => Str

The name of the program.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProgram in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

