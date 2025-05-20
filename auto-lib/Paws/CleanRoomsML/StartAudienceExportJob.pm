
package Paws::CleanRoomsML::StartAudienceExportJob;
  use Moose;
  has AudienceGenerationJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audienceGenerationJobArn', required => 1);
  has AudienceSize => (is => 'ro', isa => 'Paws::CleanRoomsML::AudienceSize', traits => ['NameInRequest'], request_name => 'audienceSize', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAudienceExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audience-export-job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::StartAudienceExportJob - Arguments for method StartAudienceExportJob on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAudienceExportJob on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method StartAudienceExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAudienceExportJob.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    $cleanrooms -ml->StartAudienceExportJob(
      AudienceGenerationJobArn => 'MyAudienceGenerationJobArn',
      AudienceSize             => {
        Type  => 'ABSOLUTE',    # values: ABSOLUTE, PERCENTAGE
        Value => 1,             # min: 1, max: 20000000

      },
      Name        => 'MyNameString',
      Description => 'MyResourceDescription',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/StartAudienceExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceGenerationJobArn => Str

The Amazon Resource Name (ARN) of the audience generation job that you
want to export.



=head2 B<REQUIRED> AudienceSize => L<Paws::CleanRoomsML::AudienceSize>





=head2 Description => Str

The description of the audience export job.



=head2 B<REQUIRED> Name => Str

The name of the audience export job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAudienceExportJob in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

