
package Paws::Neptunedata::CancelMLModelTransformJob;
  use Moose;
  has Clean => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'clean');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has NeptuneIamRoleArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'neptuneIamRoleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelMLModelTransformJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ml/modeltransform/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::CancelMLModelTransformJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::CancelMLModelTransformJob - Arguments for method CancelMLModelTransformJob on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelMLModelTransformJob on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method CancelMLModelTransformJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelMLModelTransformJob.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $CancelMLModelTransformJobOutput =
      $neptune -db->CancelMLModelTransformJob(
      Id                => 'MyString',
      Clean             => 1,             # OPTIONAL
      NeptuneIamRoleArn => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Status = $CancelMLModelTransformJobOutput->Status;

    # Returns a L<Paws::Neptunedata::CancelMLModelTransformJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/CancelMLModelTransformJob>

=head1 ATTRIBUTES


=head2 Clean => Bool

If this flag is set to C<TRUE>, all Neptune ML S3 artifacts should be
deleted when the job is stopped. The default is C<FALSE>.



=head2 B<REQUIRED> Id => Str

The unique ID of the model transform job to be canceled.



=head2 NeptuneIamRoleArn => Str

The ARN of an IAM role that provides Neptune access to SageMaker and
Amazon S3 resources. This must be listed in your DB cluster parameter
group or an error will occur.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelMLModelTransformJob in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

