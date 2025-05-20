
package Paws::EMR::GetOnClusterAppUIPresignedURL;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has OnClusterAppUIType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOnClusterAppUIPresignedURL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::GetOnClusterAppUIPresignedURLOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetOnClusterAppUIPresignedURL - Arguments for method GetOnClusterAppUIPresignedURL on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOnClusterAppUIPresignedURL on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method GetOnClusterAppUIPresignedURL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOnClusterAppUIPresignedURL.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $GetOnClusterAppUIPresignedURLOutput =
      $elasticmapreduce->GetOnClusterAppUIPresignedURL(
      ClusterId          => 'MyXmlStringMaxLen256',
      ApplicationId      => 'MyXmlStringMaxLen256',    # OPTIONAL
      DryRun             => 1,                         # OPTIONAL
      ExecutionRoleArn   => 'MyArnType',               # OPTIONAL
      OnClusterAppUIType => 'SparkHistoryServer',      # OPTIONAL
      );

    # Results:
    my $PresignedURL = $GetOnClusterAppUIPresignedURLOutput->PresignedURL;
    my $PresignedURLReady =
      $GetOnClusterAppUIPresignedURLOutput->PresignedURLReady;

    # Returns a L<Paws::EMR::GetOnClusterAppUIPresignedURLOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/GetOnClusterAppUIPresignedURL>

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application ID associated with the cluster's application user
interface presigned URL.



=head2 B<REQUIRED> ClusterId => Str

The cluster ID associated with the cluster's application user interface
presigned URL.



=head2 DryRun => Bool

Determines if the user interface presigned URL is for a dry run.



=head2 ExecutionRoleArn => Str

The execution role ARN associated with the cluster's application user
interface presigned URL.



=head2 OnClusterAppUIType => Str

The application UI type associated with the cluster's application user
interface presigned URL.

Valid values are: C<"SparkHistoryServer">, C<"YarnTimelineService">, C<"TezUI">, C<"ApplicationMaster">, C<"JobHistoryServer">, C<"ResourceManager">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOnClusterAppUIPresignedURL in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

