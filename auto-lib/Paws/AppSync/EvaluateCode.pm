
package Paws::AppSync::EvaluateCode;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'code', required => 1);
  has Context => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'context', required => 1);
  has Function => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'function');
  has Runtime => (is => 'ro', isa => 'Paws::AppSync::AppSyncRuntime', traits => ['NameInRequest'], request_name => 'runtime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateCode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/dataplane-evaluatecode');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::EvaluateCodeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::EvaluateCode - Arguments for method EvaluateCode on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EvaluateCode on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method EvaluateCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EvaluateCode.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $EvaluateCodeResponse = $appsync->EvaluateCode(
      Code    => 'MyCode',
      Context => 'MyContext',
      Runtime => {
        Name           => 'APPSYNC_JS',    # values: APPSYNC_JS
        RuntimeVersion => 'MyString',

      },
      Function => 'MyString',              # OPTIONAL
    );

    # Results:
    my $Error            = $EvaluateCodeResponse->Error;
    my $EvaluationResult = $EvaluateCodeResponse->EvaluationResult;
    my $Logs             = $EvaluateCodeResponse->Logs;
    my $OutErrors        = $EvaluateCodeResponse->OutErrors;
    my $Stash            = $EvaluateCodeResponse->Stash;

    # Returns a L<Paws::AppSync::EvaluateCodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/EvaluateCode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => Str

The code definition to be evaluated. Note that C<code> and C<runtime>
are both required for this action. The C<runtime> value must be
C<APPSYNC_JS>.



=head2 B<REQUIRED> Context => Str

The map that holds all of the contextual information for your resolver
invocation. A C<context> is required for this action.



=head2 Function => Str

The function within the code to be evaluated. If provided, the valid
values are C<request> and C<response>.



=head2 B<REQUIRED> Runtime => L<Paws::AppSync::AppSyncRuntime>

The runtime to be used when evaluating the code. Currently, only the
C<APPSYNC_JS> runtime is supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EvaluateCode in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

