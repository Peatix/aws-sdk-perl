
package Paws::CleanRoomsML::DeleteAudienceGenerationJob;
  use Moose;
  has AudienceGenerationJobArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'audienceGenerationJobArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAudienceGenerationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audience-generation-job/{audienceGenerationJobArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::DeleteAudienceGenerationJob - Arguments for method DeleteAudienceGenerationJob on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAudienceGenerationJob on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method DeleteAudienceGenerationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAudienceGenerationJob.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    $cleanrooms -ml->DeleteAudienceGenerationJob(
      AudienceGenerationJobArn => 'MyAudienceGenerationJobArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/DeleteAudienceGenerationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceGenerationJobArn => Str

The Amazon Resource Name (ARN) of the audience generation job that you
want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAudienceGenerationJob in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

