
package Paws::CloudWatchLogs::DeleteIndexPolicy;
  use Moose;
  has LogGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupIdentifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIndexPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DeleteIndexPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DeleteIndexPolicy - Arguments for method DeleteIndexPolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIndexPolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DeleteIndexPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIndexPolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DeleteIndexPolicyResponse = $logs->DeleteIndexPolicy(
      LogGroupIdentifier => 'MyLogGroupIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DeleteIndexPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupIdentifier => Str

The log group to delete the index policy for. You can specify either
the name or the ARN of the log group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIndexPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

