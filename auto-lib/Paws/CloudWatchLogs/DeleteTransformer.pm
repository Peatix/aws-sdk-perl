
package Paws::CloudWatchLogs::DeleteTransformer;
  use Moose;
  has LogGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupIdentifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTransformer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DeleteTransformer - Arguments for method DeleteTransformer on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTransformer on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DeleteTransformer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTransformer.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->DeleteTransformer(
      LogGroupIdentifier => 'MyLogGroupIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DeleteTransformer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupIdentifier => Str

Specify either the name or ARN of the log group to delete the
transformer for. If the log group is in a source account and you are
using a monitoring account, you must use the log group ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTransformer in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

