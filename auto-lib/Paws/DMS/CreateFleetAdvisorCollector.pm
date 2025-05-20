
package Paws::DMS::CreateFleetAdvisorCollector;
  use Moose;
  has CollectorName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleetAdvisorCollector');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateFleetAdvisorCollectorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateFleetAdvisorCollector - Arguments for method CreateFleetAdvisorCollector on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleetAdvisorCollector on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateFleetAdvisorCollector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleetAdvisorCollector.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateFleetAdvisorCollectorResponse = $dms->CreateFleetAdvisorCollector(
      CollectorName        => 'MyString',
      S3BucketName         => 'MyString',
      ServiceAccessRoleArn => 'MyString',
      Description          => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CollectorName = $CreateFleetAdvisorCollectorResponse->CollectorName;
    my $CollectorReferencedId =
      $CreateFleetAdvisorCollectorResponse->CollectorReferencedId;
    my $Description  = $CreateFleetAdvisorCollectorResponse->Description;
    my $S3BucketName = $CreateFleetAdvisorCollectorResponse->S3BucketName;
    my $ServiceAccessRoleArn =
      $CreateFleetAdvisorCollectorResponse->ServiceAccessRoleArn;

    # Returns a L<Paws::DMS::CreateFleetAdvisorCollectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateFleetAdvisorCollector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectorName => Str

The name of your Fleet Advisor collector (for example,
C<sample-collector>).



=head2 Description => Str

A summary description of your Fleet Advisor collector.



=head2 B<REQUIRED> S3BucketName => Str

The Amazon S3 bucket that the Fleet Advisor collector uses to store
inventory metadata.



=head2 B<REQUIRED> ServiceAccessRoleArn => Str

The IAM role that grants permissions to access the specified Amazon S3
bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleetAdvisorCollector in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

