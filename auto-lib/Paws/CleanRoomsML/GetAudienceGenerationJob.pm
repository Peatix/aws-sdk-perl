
package Paws::CleanRoomsML::GetAudienceGenerationJob;
  use Moose;
  has AudienceGenerationJobArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'audienceGenerationJobArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAudienceGenerationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audience-generation-job/{audienceGenerationJobArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetAudienceGenerationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetAudienceGenerationJob - Arguments for method GetAudienceGenerationJob on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAudienceGenerationJob on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetAudienceGenerationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAudienceGenerationJob.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetAudienceGenerationJobResponse =
      $cleanrooms -ml->GetAudienceGenerationJob(
      AudienceGenerationJobArn => 'MyAudienceGenerationJobArn',

      );

    # Results:
    my $AudienceGenerationJobArn =
      $GetAudienceGenerationJobResponse->AudienceGenerationJobArn;
    my $CollaborationId = $GetAudienceGenerationJobResponse->CollaborationId;
    my $ConfiguredAudienceModelArn =
      $GetAudienceGenerationJobResponse->ConfiguredAudienceModelArn;
    my $CreateTime  = $GetAudienceGenerationJobResponse->CreateTime;
    my $Description = $GetAudienceGenerationJobResponse->Description;
    my $IncludeSeedInOutput =
      $GetAudienceGenerationJobResponse->IncludeSeedInOutput;
    my $Metrics = $GetAudienceGenerationJobResponse->Metrics;
    my $Name    = $GetAudienceGenerationJobResponse->Name;
    my $ProtectedQueryIdentifier =
      $GetAudienceGenerationJobResponse->ProtectedQueryIdentifier;
    my $SeedAudience  = $GetAudienceGenerationJobResponse->SeedAudience;
    my $StartedBy     = $GetAudienceGenerationJobResponse->StartedBy;
    my $Status        = $GetAudienceGenerationJobResponse->Status;
    my $StatusDetails = $GetAudienceGenerationJobResponse->StatusDetails;
    my $Tags          = $GetAudienceGenerationJobResponse->Tags;
    my $UpdateTime    = $GetAudienceGenerationJobResponse->UpdateTime;

    # Returns a L<Paws::CleanRoomsML::GetAudienceGenerationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetAudienceGenerationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceGenerationJobArn => Str

The Amazon Resource Name (ARN) of the audience generation job that you
are interested in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAudienceGenerationJob in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

